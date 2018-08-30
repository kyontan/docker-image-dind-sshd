build:
	docker build --rm -t eugenmayer/docker-dind-sshd ./

push:
	docker push eugenmayer/docker-dind-sshd