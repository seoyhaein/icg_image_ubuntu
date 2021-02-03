#####################Dockerfile#####################
# Dockerfile
# MAINTAINER mjkam, dwkim, yhkim
# Software: strelka
# Software Version: 2.9.9
# Description:      
# Website:         https://github.com/Illumina/strelka/blob/v2.9.x/docs/userGuide/installation.md 
# Provides:         python2++ gcc 
# Base Image:       icg_base_1.0
#####################Installation#####################
FROM icg_base_1.0

#Prerequisites to build
RUN apt-get update -qq && apt-get install -y python2.7 -qq bzip2 gcc g++ make zlib1g-dev rsync perl-doc python-pip python-dev python-setuptools


ENV STRELKA_INSTALL_DIR /opt/strelka/

ENV STRELKA_VERSION 2.9.9

RUN wget https://github.com/Illumina/strelka/releases/download/v${STRELKA_VERSION}/strelka-${STRELKA_VERSION}.release_src.tar.bz2 \
  && tar -xjf strelka-${STRELKA_VERSION}.release_src.tar.bz2 \
  && rm -rf strelka-${STRELKA_VERSION}.release_src.tar.bz2 \
  && mkdir -p ${STRELKA_INSTALL_DIR}/build \
  && mv strelka-${STRELKA_VERSION}.release_src ${STRELKA_INSTALL_DIR} \
  && cd ${STRELKA_INSTALL_DIR} \
  && strelka-${STRELKA_VERSION}.release_src/configure --jobs=8 --prefix=${STRELKA_INSTALL_DIR} \
  && make install

ENV PATH="${STRELKA_INSTALL_DIR}/bin:${PATH}"
WORKDIR /home/centos/mnt1/data
