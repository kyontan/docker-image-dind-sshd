build:
	docker build --rm -t kyontan/docker-dind-sshd ./

push:
	docker push kyontan/docker-dind-sshd
