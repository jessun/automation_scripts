FROM --platform=$TARGETPLATFORM golang:alpine as builder
RUN GOPROXY=https://goproxy.cn,direct GO111MODULE=on go install github.com/mikefarah/yq/v2@latest
RUN yq --version
RUN which yq
