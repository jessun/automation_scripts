FROM --platform=$TARGETPLATFORM alpine
ARG TARGETARCH

RUN wget -O /usr/bin/swagger https://github.com/go-swagger/go-swagger/releases/download/v0.19.0/swagger_linux_$TARGETARCH && \
    chmod +x /usr/bin/swagger

COPY * /docker-build/
