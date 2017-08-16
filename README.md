# README

[![](https://badge.imagelayers.io/softwarecraftsmen/atlassian-plugin-sdk-confluence:latest.svg)](https://imagelayers.io/?images=softwarecraftsmen/atlassian-plugin-sdk-confluence:latest)

## Prepare a docker host

```sh
docker-machine create --driver virtualbox atlassian <1>
docker-machine start atlassian <2>
eval `docker-machine env atlassian` <3>
```

1. Create a docker machine (once only)
2. Start the docker machine
3. Setup the docker client to use the docker-machine



## Run a Plugin SDK instance

```sh
docker pull softwarecraftsmen/atlassian-plugin-sdk-confluence
docker run -ti -v dot_m2:/root/.m2 -v <plugin-project-directory>:/project -w /project -p 11990:1990 --hostname confluence softwarecraftsmen/atlassian-plugin-sdk-confluence
```
