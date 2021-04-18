FROM rust:alpine

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

RUN apk add --no-cache -U libc-dev
RUN apk add --no-cache -U make
RUN apk add --no-cache -U openssl openssl-dev

RUN cargo  --version
RUN rustc  --version
RUN rustup --version

COPY ./* /build/
