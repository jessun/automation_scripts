FROM centos:7

LABEL maintainer="Jessun<jessun.zhang@gmail.com>"

COPY ./* /build/

ENV WORK_DIR=/workbench

RUN mkdir -p ${WORK_DIR} \
    && cp -a /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak \
    && curl -o /etc/yum.repos.d/CentOS-Base.repo https://repo.huaweicloud.com/repository/conf/CentOS-AltArch-7.repo \
    && yum clean all \
    && yum makecache \ 
    && yum update -y \
    && yum -y install wget ncurses ncurses-devel libaio-devel gmp gmp-devel  mpfr  mpfr-devel libmpc libmpc-devel zlib-devel net-tools cmake openssl openssl-devel gcc-c++ \
    && yum clean all

RUN cd $WORK_DIR  \
    && curl -O https://cmake.org/files/v3.5/cmake-3.5.2.tar.gz \
       && tar -xvf cmake-3.5.2.tar.gz \
          && rm -fr cmake-3.5.2.tar.gz \
       && cd cmake-3.5.2 && ./bootstrap && make -j 96  && make install \
          && rm -fr ./cmake-3.5.2 

RUN cd &WORK_DIR \ 
    && curl -O https://mirrors.tuna.tsinghua.edu.cn/gnu/gcc/gcc-7.3.0/gcc-7.3.0.tar.gz \
        && tar -xvf gcc-7.3.0.tar.gz \
            && rm -fr gcc-7.3.0.tar.gz \
        && cd gcc-7.3.0  &&  ./configure --prefix=/usr --mandir=/usr/share/man --infodir=/usr/share/info --enable-bootstrap && make -j 96 && make -j 96 install \
            && rm -fr ./gcc-7.3.0
