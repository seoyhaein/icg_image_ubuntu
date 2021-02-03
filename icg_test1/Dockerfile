#####################Dockerfile#####################
# Dockerfile
# MAINTAINER mjkam, dwkim, yhkim
# Software:         icg_base
# Software Version: 1.0 
# Description:      icg base image
# Website:          
# Provides:         ubuntu16.04 build-essential wget curl python2.7
# Base Image:       ubuntu:16.04
#####################Installation#####################

FROM ubuntu:16.04


RUN apt-get update &&\
    apt-get install -y software-properties-common

RUN add-apt-repository ppa:openjdk-r/ppa  

RUN apt-get update && \
    apt-get -y install curl && \
    apt-get -y install build-essential && \
    apt-get -y install wget && \
    apt-get install -y libtbb-dev && \
    apt-get install -y perl-doc  && \
    apt-get -y install python2.7 openjdk-8-jdk 

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python2.7 get-pip.py


RUN pip install awscli
RUN apt-get update &&\
    apt-get install -y zlib1g-dev libffi-dev
ENV VERSION_PYTHON3 3.7.2
ENV URL_PYTHON3 "https://www.python.org/ftp/python/${VERSION_PYTHON3}/Python-${VERSION_PYTHON3}.tgz"
### Installing python3
RUN wget -q -O - $URL_PYTHON3 |tar -zxv && \
    cd Python-${VERSION_PYTHON3} && \
    ./configure --enable-optimizations && \
    make -j 8 && \
    make altinstall &&\
    cd .. && \
    cp ./Python-${VERSION_PYTHON3}/python /usr/local/bin && \
    rm -rf ./Python-${VERSION_PYTHON3}

WORKDIR /home/centos/mnt1/data


