FROM --platform=$TARGETPLATFORM golang:alpine as builder
RUN GO111MODULE=on go get github.com/mikefarah/yq/v2
RUN yq --version
RUN which yq


