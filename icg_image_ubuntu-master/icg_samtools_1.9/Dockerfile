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

RUN apt-get update && apt-get install --yes unzip wget gcc g++ libtbb-dev make zlib1g-dev


ENV VERSION_SAMTOOLS 1.9
ENV URL_SAMTOOLS "https://github.com/samtools/samtools/releases/download/${VERSION_SAMTOOLS}/samtools-${VERSION_SAMTOOLS}.tar.bz2"
### Installing samtools


RUN wget $URL_SAMTOOLS && \
    bunzip2 samtools-${VERSION_SAMTOOLS}.tar.bz2 && \
    tar xf samtools-${VERSION_SAMTOOLS}.tar && \
    cd samtools-${VERSION_SAMTOOLS} && ./configure --without-curses --disable-bz2 --disable-lzma && make && make install && \
    cp ./samtools /usr/local/bin && \
    cd ../ && \
    rm -rf ./samtools-${VERSION_SAMTOOLS} samtools-${VERSION_SAMTOOLS}.tar && \
    strip /usr/local/bin/*; true

RUN apt-get clean

WORKDIR /home/centos/mnt1/data
