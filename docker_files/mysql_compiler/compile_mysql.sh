#!/bin/bash

export WORK_DIR="$WORK_DIR"
export MYSQL_SRC_WITH_BOOST_TAR="https://dev.mysql.com/get/Downloads/MySQL-5.7/mysql-boost-5.7.27.tar.gz"
export http_proxy="http://127.0.0.1:1087"
export https_proxy="http://127.0.0.1:1087"

# cd $WORK_DIR && wget https://dev.mysql.com/get/Downloads/MySQL-5.7/mysql-boost-5.7.25.tar.gz
# cd $WORK_DIR && tar -xvf mysql-boost-5.7.25.tar.gz  && rm -fr ./mysql-boost-5.7.25.tar.gz
cd $WORK_DIR && cd mysql-5.7.25 && mkdir build &&  cd build \
    && cmake .. -DBUILD_CONFIG=mysql_release -DCMAKE_INSTALL_PREFIX=/opt/mysql -DBUILD_CONFIG=mysql_release -DWITH_BOOST=../boost/boost_1_59_0 -DWITH_NUMA=1 -DWITH_DEBUG=1

