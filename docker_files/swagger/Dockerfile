FROM alpine
ARG TARGETARCH

RUN wget -O swagger  https://github.com/go-swagger/go-swagger/releases/download/v0.19.0/swagger_linux_$TARGETARCH

COPY * /docker-build/
