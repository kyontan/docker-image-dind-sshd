# About this Repo

Forked and basied on official docker:dind image with an added SSH server.

## Common configuration
 - configuring and SSH key using ENV `AUTHORIZED_KEYS` - you need to have the public key here, not the path to the public key
 - configuring and SSH key via GitHub user using ENV `AUTHORIZED_KEYS_FOR_GITHUB_USER` supported
 
## Docker socket (reuse running docker engine
 - Mount your local docker socket into the container to `/var/run/docker.sock`
 - add the `COMMAND` docker
 
This will run the image, start the SSHD daemon and let the `docker` command talk to your host docker engine

## Start isolated docker engine
 - use `privileged: true` when you start the container
 
 - configuring and the docker client config ( /root/.docker/config.json) key using ENV `DOCKER_CLIENT_CONFIG_JSON`

This way you run a fresh, isolated docker engine inside the container ( true dind )


## More option
Please see `run.sh` for the possible options or the official `https://hub.docker.com/_/docker/` / `https://github.com/danielguerra69/docker-dind-sshd/blob/master/dockerd-entrypoint.sh`\
 for `dind` options
