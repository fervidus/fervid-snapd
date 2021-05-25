# snapd

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with snapd](#setup)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

Fork of [kemra102](https://github.com/kemra102)'s original [module](https://github.com/kemra102/puppet-snapd) which appears to have been abandoned sometime in 2018. If author would like to resume, please notify.

---

This module manages the `snapd` package and service. `snapd` is a tool that enables the installation of `snap` packages on a Linux system.

See the [official website](http://snapcraft.io/) for more detailed information.

## Setup

### What snapd affects

This module currently manages the following items:

* The `snapd` package.
* The `snapd` service.

## Usage

To use this module simply include it:

```puppet
class { 'snapd': }
```

or

```puppet
include ::snapd
```

Install packages using the package provider
```puppet
package { ['phpstorm', 'atom']:
  ensure   => latest,
  provider => snap,
}

package { 'spotify':
  ensure   => purged,
  provider => snap,
}
```

### Unsupported Operating Systems

If your OS is not listed in [Limitations](#Limitations) it may still work regardless.

Debian Sid for example should work without any changes.

## Reference

### snapd

This is the main class. Currently it has no configurable items.

## Limitations

Supported Operating Systems:

* Arch Linux 5
* RedHat derivatives 7-8
* Debian 8-9
* Ubuntu 16.04-18.04


Supported Puppet Versions:

* Puppet Enterprise >= 2017.3
* Puppet Open Source >= 6.0.0

## Provider
We provide a basic package provider which allows installs and removes, we will need to add latest, query and update support in the future.

## Development

To contribute to the development of this module please raise a pull request.

Particular help is currently highly desired particularly on the following items:

* Package provider query, latest and update functionality
* Support for more Operating Systems
* More testing
