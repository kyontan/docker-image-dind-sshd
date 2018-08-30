FROM docker:dind

ENV DOCKER_COMPOSE_VERSION 1.22.0

# https://github.com/docker/docker/blob/master/project/PACKAGERS.md#runtime-dependencies
RUN apk add --no-cache \
		btrfs-progs \
		e2fsprogs \
		e2fsprogs-extra \
		iptables \
		xfsprogs \
		xz \
		py-pip \
		openssh \
		git \
	&& pip install --upgrade pip \
	&& pip install -U docker-compose==${DOCKER_COMPOSE_VERSION} \
	&& rm -rf /root/.cache \
    && chmod +x /usr/local/bin/dind \
	&& mkdir -p /root/.docker/ /root/.ssh/ \
	&& touch /root/.docker/config.json \
	&& touch /root/.ssh/authorized_keys \
	&& chmod u=rwx,g=,o= /root/.ssh \
	&& chmod u=r,g=,o= /root/.ssh/authorized_keys \
	&& rm -rf /etc/ssh/ssh_host_rsa_key /etc/ssh/ssh_host_dsa_key
	
COPY run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 2375 22

#make sure we get fresh keys

ENTRYPOINT ["/run.sh"]
CMD []
