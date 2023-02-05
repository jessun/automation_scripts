DOCKER_IMAGE    = jessun/swagger
override DOCKER = $(shell which docker)
CTN_NAME        = alpine-swagger

build:
	docker buildx build --platform linux/arm64,linux/amd64 -t $(DOCKER_IMAGE) --push . 

push:
	docker push $(DOCKER_IMAGE)

run: 
	$(DOCKER) run -d --entrypoint /sbin/init --privileged --name ${CTN_NAME} -v $(shell pwd)/:/work --rm -w /work $(DOCKER_IMAGE)

rund:
	$(DOCKER) run -d --entrypoint /sbin/init --privileged --name ${CTN_NAME} 

stop:
	$(DOCKER) stop ${CTN_NAME}

rm:
	$(DOCKER) rm ${CTN_NAME}
