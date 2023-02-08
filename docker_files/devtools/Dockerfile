FROM --platform=$TARGETPLATFORM centos:7 as base

WORKDIR /work

RUN yum install git which  -y
# RUN curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer > init.sh && \
#     chmod +x init.sh && ./init.sh


# RUN apk add --no-cache python2 

# RUN apk add --no-cache python2 && \
#     pip install scspell3k

# RUN GOPROXY=https://goproxy.cn,direct GO111MODULE=on go install github.com/mikefarah/yq/v2@latest && \
#      yq --version && which yq



# FROM --platform=$TARGETPLATFORM python:2.7.18-alpine3.11 as scspell_build
# ARG TARGETARCH
# COPY --from=0 /go/bin/yq /usr/bin/
# RUN wget -O /usr/bin/swagger https://github.com/go-swagger/go-swagger/releases/download/v0.19.0/swagger_linux_$TARGETARCH && \
#     chmod +x /usr/bin/swagger && \
#     pip install scspell3k
#
COPY * /docker-build/
