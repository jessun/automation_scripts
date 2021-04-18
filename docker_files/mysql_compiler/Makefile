DOCKER_IMAGE = ghcr.io/jessun/mysql-compiler
CTN_NAME        = mysql-compiler

override DOCKER = $(shell which docker)

build:
	$(DOCKER) build --network host -t $(DOCKER_IMAGE) .

push:
	$(DOCKER) push $(DOCKER_IMAGE)

run:
	$(DOCKER) run -t -d --privileged --name ${CTN_NAME}  --volume $(PWD):/workbench --network host $(DOCKER_IMAGE) 

stop:
	$(DOCKER) stop $(CTN_NAME) && $(DOCKER) rm $(CTN_NAME)

b: build run 
	$(DOCKER) logs $(CTN_NAME)
