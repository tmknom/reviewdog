# reviewdog

[![CircleCI](https://circleci.com/gh/tmknom/reviewdog.svg?style=svg)](https://circleci.com/gh/tmknom/reviewdog)
[![Docker Build Status](https://img.shields.io/docker/cloud/build/tmknom/reviewdog.svg)](https://hub.docker.com/r/tmknom/reviewdog/builds/)
[![Docker Automated build](https://img.shields.io/docker/cloud/automated/tmknom/reviewdog.svg)](https://hub.docker.com/r/tmknom/reviewdog/)
[![MicroBadger Size](https://img.shields.io/microbadger/image-size/tmknom/reviewdog.svg)](https://microbadger.com/images/tmknom/reviewdog)
[![MicroBadger Layers](https://img.shields.io/microbadger/layers/tmknom/reviewdog.svg)](https://microbadger.com/images/tmknom/reviewdog)
[![License](https://img.shields.io/github/license/tmknom/reviewdog.svg)](https://opensource.org/licenses/Apache-2.0)

Dockerfile template.

## Requirements

- [Docker](https://www.docker.com/)

## Usage

```sh
curl -fsSL https://raw.githubusercontent.com/tmknom/reviewdog/master/install | sh -s example
cd example
```

## Makefile targets

```text
build                          Build docker image
format                         Format code
help                           Show help
install                        Install requirements
lint                           Lint code
```

## Development

### Installation

```shell
git clone git@github.com:tmknom/reviewdog.git
cd reviewdog
make install
```

### Deployment

Automatically deployed by "[DockerHub Automated Build](https://docs.docker.com/docker-hub/builds/)" after merge.

### Deployment Pipeline

1. GitHub - Version Control System
   - <https://github.com/tmknom/reviewdog>
2. CircleCI - Continuous Integration
   - <https://circleci.com/gh/tmknom/reviewdog>
3. Docker Hub - Docker Registry
   - <https://hub.docker.com/r/tmknom/reviewdog>
4. MicroBadger - Docker Inspection
   - <https://microbadger.com/images/tmknom/reviewdog>

## License

Apache 2 Licensed. See LICENSE for full details.
