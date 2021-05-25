# Change log

All notable changes to this project will be documented in this file. The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](http://semver.org).

## [v1.2.1](https://github.com/fervidus/fervid-snapd/tree/v1.2.1) (2021-05-25)

[Full Changelog](https://github.com/fervidus/fervid-snapd/compare/v1.1.0...v1.2.1)

### Fixed

- snap works on Debian, too [\#7](https://github.com/kemra102/puppet-snapd/pull/7) ([seidler2547](https://github.com/seidler2547))
- allow version selection with snap package [\#9](https://github.com/kemra102/puppet-snapd/pull/9) ([taniahagan](https://github.com/taniahagan))

### Changed

- `pdkconvert` - v2.1.0
- bump minimal Puppet version to v6.0.0
- additional OS support
- refactored spec test
- provider - confine kernel to linux

## [v1.1.0](https://github.com/kemra102/puppet-snapd/tree/v1.1.0) (2018-09-11)

[Full Changelog](https://github.com/kemra102/puppet-snapd/compare/v1.0.0...v1.1.0)

### Changed

provider - added `snap` provider for the package resource

## [v1.0.0](https://github.com/kemra102/puppet-snapd/tree/v1.0.0) (2017-01-08)

### Changed

Initial release
package - install `snapd` package
service - manage `snapd` service
