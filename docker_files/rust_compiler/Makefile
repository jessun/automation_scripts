DOCKER_IMAGE    = ghcr.io/jessun/rust/rust-compiler
override DOCKER = $(shell which docker)
CTN_NAME        = rust-compiler

build_docker:
	docker build -t $(DOCKER_IMAGE) .

push_docker:
	docker push $(DOCKER_IMAGE)

run_docker: 
	$(DOCKER) run -d --entrypoint /sbin/init --privileged --name ${CTN_NAME} -v $(shell pwd)/:/app --rm -w /app $(DOCKER_IMAGE)

stop_docker:
	$(DOCKER) stop ${CTN_NAME}

rm_docker:
	$(DOCKER) rm ${CTN_NAME}
