FROM rust:alpine

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
    && apk add --no-cache -U libc-dev \
    && apk add --no-cache -U make \
    && apk add --no-cache -U openssl openssl-dev \
    && rustup component add rustfmt \
    && rustup component add clippy \
    && cargo  --version \
    && rustc  --version \
    && rustup --version

COPY ./* /build/
