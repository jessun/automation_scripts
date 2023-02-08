FROM --platform=$TARGETPLATFORM golang:alpine as yq_builder
RUN GOPROXY=https://goproxy.cn,direct GO111MODULE=on go install github.com/mikefarah/yq/v2@latest && \
     yq --version && which yq


FROM --platform=$TARGETPLATFORM alpine as swagger_builder
ARG TARGETARCH
RUN wget -O /usr/bin/swagger https://github.com/go-swagger/go-swagger/releases/download/v0.19.0/swagger_linux_$TARGETARCH && \
    chmod +x /usr/bin/swagger

FROM --platform=$TARGETPLATFORM python:2.7.18-alpine3.11 as scspell_build
COPY --from=0 /go/bin/yq /usr/bin/
RUN pip install scspell3k

COPY * /docker-build/
