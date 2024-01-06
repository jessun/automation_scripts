# Base Info
APP  = arch_tiny
TAG = latest
USER = jessun

DOCKER_IMAGE    = $(USER)/$(APP)
CTN_NAME        = $(APP)-CTN
override DOCKER = $(shell which docker)

buildx:
	docker buildx build --platform linux/amd64 \
		-t $(DOCKER_IMAGE):$(TAG) \
		-t $(DOCKER_IMAGE) \
		--load \
		. 

# buildx:
# 	docker buildx build --platform linux/arm64,linux/amd64 \
# 		-t $(DOCKER_IMAGE):$(TAG) \
# 		-t $(DOCKER_IMAGE) \
# 		--build-arg "HTTP_PROXY=http://10.186.16.118:1087" \
# 		--build-arg "HTTPS_PROXY=http://10.186.16.118:1087" \
# 		--push \
# 		. 

push:
	$(DOCKER) push $(DOCKER_IMAGE)

rmi: 
	$(DOCKER) stop ${CTN_NAME} ; $(DOCKER) rmi $(DOCKER_IMAGE)

run: 
	$(DOCKER) pull $(DOCKER_IMAGE)
	$(DOCKER) run -d --entrypoint /sbin/init --platform 'linux/amd64' --privileged --name ${CTN_NAME} -v $(shell pwd)/:/work --rm -w /work $(DOCKER_IMAGE)

stop:
	$(DOCKER) stop ${CTN_NAME}

rm:
	$(DOCKER) rm ${CTN_NAME}
