#####################Dockerfile#####################
# Dockerfile
# MAINTAINER mjkam, dwkim, yhkim
# Software:         tophat2[bowtie, Python, samtools(is packaged with Tophat)]
# Software Version: 2.1.1  [2.2.6, 2.7.15, 0.1.18]
# Description:      icg_base_1.0
# Website:           https://ccb.jhu.edu/software/tophat/index.shtml
# Provides:         tophat2
# Base Image:       icg_base_1.0
#####################Installation#####################



FROM icg_base_1.0


ENV VERSION_BOWTIE2 2.2.6
ENV URL_BOWTIE2 "https://github.com/BenLangmead/bowtie2/archive/v${VERSION_BOWTIE2}.tar.gz"

ENV VERSION_TOPHAT 2.1.1
ENV URL_TOPHAT "http://ccb.jhu.edu/software/tophat/downloads/tophat-${VERSION_TOPHAT}.Linux_x86_64.tar.gz"



RUN apt-get update && apt-get install --yes unzip wget gcc g++ libtbb-dev make zlib1g-dev

### Installing bowtie2
RUN    wget -q -O - $URL_BOWTIE2 | tar -zxv && \
    cd bowtie2-${VERSION_BOWTIE2} && \
    make -j 4 && \
    cd .. && \
    cp ./bowtie2-${VERSION_BOWTIE2}/bowtie2 /usr/local/bin/ && \
    cp ./bowtie2-${VERSION_BOWTIE2}/bowtie2-* /usr/local/bin/ && \
    rm -rf ./bowtie2-${VERSION_BOWTIE2}

### Installing tophat2
RUN wget -q -O - $URL_TOPHAT | tar -zxv && \
    cp ./tophat-${VERSION_TOPHAT}.Linux_x86_64/* /usr/local/bin && \
    rm -rf ./tophat-${VERSION_TOPHAT}.Linux_x86_64 && \
    strip /usr/local/bin/*; true

RUN apt-get remove --yes --purge build-essential gcc-multilib apt-utils zlib1g-dev vim git
RUN apt-get clean

WORKDIR /home/centos/mnt1/data


