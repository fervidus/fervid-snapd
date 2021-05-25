# Change log

All notable changes to this project will be documented in this file. The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](http://semver.org).

## [v1.2.1](https://github.com/fervidus/fervid-snapd/tree/v1.2.1) (2021-05-25)

[Full Changelog](https://github.com/fervidus/fervid-snapd/compare/v1.1.0...v1.2.1)

### Fixed

- snap works on Debian, too [\#7](https://github.com/kemra102/puppet-snapd/pull/7) ([seidler2547](https://github.com/seidler2547))
- allow version selection with snap package [\#9](https://github.com/kemra102/puppet-snapd/pull/9) ([taniahagan](https://github.com/taniahagan))

### Changed

- pdkconvert - v2.1.0
- bump minimal Puppet version to 6.0.0
- added OS support for RedHat/Debian
- refactored spec test
- provider: confine kernel to linux

## [v8.5.0](https://github.com/puppetlabs/puppetlabs-ntp/tree/v8.5.0) (2020-12-16)

[Full Changelog](https://github.com/puppetlabs/puppetlabs-ntp/compare/v8.4.0...v8.5.0)

### Added

- pdksync - \(feat\) - Add support for Puppet 7 [\#594](https://github.com/puppetlabs/puppetlabs-ntp/pull/594) ([daianamezdrea](https://github.com/daianamezdrea))
- \(MAINT\) Make mode for logfile configurable [\#590](https://github.com/puppetlabs/puppetlabs-ntp/pull/590) ([tmanninger](https://github.com/tmanninger))
- \(IAC-997\) Removal of inappropriate terminology [\#587](https://github.com/puppetlabs/puppetlabs-ntp/pull/587) ([pmcmaw](https://github.com/pmcmaw))



## 2018-09-11 - Release 1.1.0
### Summary
Added provider.

#### Features
- Added the `snap` provider for the package resource.

## 2017-01-08 - Release 1.0.0
### Summary
Initial release.

#### Features
- Installs the `snapd` package.
- Manages the `snapd` service.
