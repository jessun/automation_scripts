APP  = scspell
USER = jessun

# =============================================
DOCKER_IMAGE    = $(USER)/$(APP)
override DOCKER = $(shell which docker)
CTN_NAME        = alpine-$(APP)
TAG = v0.19.0

build:
	docker buildx build --platform linux/arm64,linux/amd64 \
		-t $(DOCKER_IMAGE):$(TAG) \
		-t $(DOCKER_IMAGE) \
		--push \
		. 

push:
	docker push $(DOCKER_IMAGE)

run: 
	$(DOCKER) run -d --entrypoint /sbin/init --privileged --name ${CTN_NAME} -v $(shell pwd)/:/work --rm -w /work $(DOCKER_IMAGE)

rund:
	$(DOCKER) run -d --entrypoint /sbin/init --privileged --name ${CTN_NAME} $(DOCKER_IMAGE)

stop:
	$(DOCKER) stop ${CTN_NAME}

rm:
	$(DOCKER) rm ${CTN_NAME}
