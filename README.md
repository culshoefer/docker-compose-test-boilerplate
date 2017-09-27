# What is this?
A small boilerplate project to discuss the best way of setting up an example application with docker, docker-compose etc.

# Setup
We require you to install [Docker-CE](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/#os-requirements) and [docker-compose](https://docs.docker.com/compose/install/) before starting to build.

# Build production docker
```sh
./build-docker-prod.sh
```
# Build dev docker
```sh
./build-docker-dev.sh
```

# Build dev docker and run all tests in docker
```sh
./runtests.sh # Currently only runs Django tests
```

# Build postman/newman test runner docker
```sh
# TODO
```

# Build dev docker and enter dev docker with vagrant
```sh
# TODO
```
