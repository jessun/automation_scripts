DOCKER_IMAGE    = ghcr.io/jessun/rust/rust-compiler
override DOCKER = $(shell which docker)
CTN_NAME        = rust-compiler

build:
	docker build -t $(DOCKER_IMAGE) .

push:
	docker push $(DOCKER_IMAGE)

run: 
	$(DOCKER) run -d --entrypoint /sbin/init --privileged --name ${CTN_NAME} -v $(shell pwd)/:/app --rm -w /app $(DOCKER_IMAGE)

stop:
	$(DOCKER) stop ${CTN_NAME}

rm:
	$(DOCKER) rm ${CTN_NAME}
