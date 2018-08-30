# About this Repo

Forked and basied on official docker:dind image with support for

 - running and sshd server
 - configuring and SSH key using ENV `AUTHORIZED_KEYS`
 - configuring and the docker client config ( /root/.docker/config.json) key using ENV `DOCKER_CLIENT_CONFIG_JSON`
 - mounting `/var/run/docker.sock` and run the image in client mode to e.g. reused your local running docker engine ( use `docker` as command to do so )
 
 Please see `run.sh` for the possible options or the official `https://hub.docker.com/_/docker/` / `https://github.com/danielguerra69/docker-dind-sshd/blob/master/dockerd-entrypoint.sh`\
 for `dind` options