<img src="https://raw.githubusercontent.com/elnebuloso/docker-csso-cli/master/logo.png" width="100%"/>

# docker-csso-cli

![Release](https://github.com/elnebuloso/docker-csso-cli/workflows/Release/badge.svg)
[![Docker Pulls](https://img.shields.io/docker/pulls/elnebuloso/csso-cli.svg)](https://hub.docker.com/r/elnebuloso/csso-cli)
[![GitHub](https://img.shields.io/github/license/elnebuloso/docker-csso-cli.svg)](https://github.com/elnebuloso/docker-csso-cli)

Dockerized Command Line Interface for CSSO - CSS Minifier

## github

- https://github.com/elnebuloso/docker-csso-cli

## docker

- https://hub.docker.com/r/elnebuloso/csso-cli
- https://hub.docker.com/r/elnebuloso/csso-cli/tags?page=1&ordering=last_updated
- weekly builds, 0 0 * * 0

## container development

```
# start
docker-compose up --build --remove-orphans -d

# version
docker-compose run main --version

# help
docker-compose run main --help

# minify
docker-compose run main bootstrap-3.3.7-dist/css/bootstrap.css --output compiled.css

# stop
docker-compose down --remove-orphans
```

## links

- https://github.com/css/csso-cli