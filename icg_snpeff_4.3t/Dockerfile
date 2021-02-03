#####################Dockerfile#####################
# Dockerfile
# MAINTAINER mjkam, dwkim, yhkim
# Software:         snpeff
# Software Version: 4.3T
# Description:      annotation
# Website:          http://sourceforge.net/projects/snpeff/|http://snpeff.sourceforge.net/
# Provides:         java
# Base Image:       icg_java_1.8
#####################Installation#####################

FROM icg_java_1.8

RUN apt-get update && apt-get install --yes unzip wget gcc g++ libtbb-dev make zlib1g-dev
#http://snpeff.sourceforge.net/download_donate.html

ENV ZIP=snpEff_v4_1k_core.zip
ENV URL=https://github.com/BioDocker/software-archive/releases/download/snpEff

RUN wget $URL/$ZIP -O ./$ZIP && \
    unzip ./$ZIP && rm -rf ./$ZIP && \
    chmod +x ./snpEff/snpEff.jar && \
    chmod +x ./snpEff/SnpSift.jar && \
    mv ./snpEff/snpEff.jar /usr/local/bin && \
    mv ./snpEff/SnpSift.jar /usr/local/bin && \
    rm -rf ./snpEff && \ 
    strip /usr/local/bin/*; true

RUN apt-get clean

WORKDIR /home/centos/mnt1/data
