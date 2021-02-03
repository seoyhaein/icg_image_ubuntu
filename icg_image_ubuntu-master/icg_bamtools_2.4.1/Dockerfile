##################### Dockerfile #####################
# Dockerfile
# MAINTAINER mjkam, dwkim, yhkim
# Software:         samtools
# Software Version: 1.9
# Description:      icg_base_1.0
# Website:          http://www.htslib.org/
# Provides:         ubuntu16.04 build-essential wget curl 
# Base Image:       icg_base_1.0
##################### Installation #####################

FROM icg_base_1.0

RUN apt-get update && apt-get install --yes unzip wget gcc g++ libtbb-dev make zlib1g-dev cmake

WORKDIR /opt

### Installing bamtools

ENV VERSION 2.4.1
ENV NAME bamtools
ENV URL "https://github.com/pezmaster31/bamtools/archive/v${VERSION}.tar.gz"

RUN wget -q -O - $URL | tar -zxv && \
    cd ${NAME}-${VERSION} && \
    mkdir build && \
    cd build && \
    cmake .. && \
    make && \
    make install && \
    cd ../.. && \
    cp ./${NAME}-${VERSION}/lib/libbamtools.so.${VERSION} /usr/lib/ && \
    rm -rf ./${NAME}-${VERSION} && strip /usr/local/bin/*; true

RUN apt-get clean

WORKDIR /home/centos/mnt1/data
