require 'puppet/provider/package'

# Super simple snap package provider
# todo: latest, update
Puppet::Type.type(:package).provide :snap, parent: Puppet::Provider::Package do
  desc 'Package management based on snap.'

  confine kernel: :linux
  commands installer: '/usr/bin/snap'
  has_feature :purgeable
  has_feature :upgradeable
  has_feature :versionable

  def self.instances
    output = installer 'list'
    lines = output.split("\n")
    lines.shift # skip header
    instances = []

    lines.each do |line|
      unless line =~ %r{^(\S+)\s+(\S+)\s+(.+)$}
        raise Puppet::Error.new(line + ' does not contain a version', 1)
      end

      name = Regexp.last_match(1)
      version = Regexp.last_match(2)

      instances << new(
        name: name,
        provider: :snap,
        ensure: version,
      )
    end

    instances
  end

  def query
    instances = self.class.instances
    instances.each do |instance|
      if instance.name == @resource[:name]
        return instance
      end
    end

    nil
  end

  def install
    args = []

    should = @resource.should(:ensure)
    case should
    when true, false, Symbol
      installer 'install', '--classic', @resource[:name]
    else
      args.clear
      args = '--channel=' << @resource[:ensure]
      installer 'install', '--classic', @resource[:name], args
    end
  end

  def purge
    installer 'remove', @resource[:name]
  end

  def uninstall
    installer 'remove', @resource[:name]
  end

  def latest
    output = installer 'search', @resource[:name]
    lines = output.split("\n")
    lines.shift # skip header

    lines.each do |line|
      unless line =~ %r{^(\S+)\s+(\S+)\s+(.+)$}
        raise Puppet::Error.new(line + ' does not contain a version', 1)
      end

      name = Regexp.last_match(1)
      version = Regexp.last_match(2)
      # info = Regexp.last_match(3)

      if name == @resource[:name]
        return version
      end
    end
  end

  def update
    unless query
      return install
    end

    installer 'refresh', @resource[:name]
  end
end
