#####################Dockerfile#####################
# Dockerfile
# MAINTAINER mjkam, dwkim, yhkim
# Software:         icg_base
# Software Version: 1.0 
# Description:      icg base image
# Website:          
# Provides:         ubuntu16.04 build-essential wget curl python3.7.2
# Base Image:       icg_base_1.0
#####################Installation#####################

FROM icg_base_1.0


RUN apt-get update &&\
    apt-get install -y zlib1g-dev libffi-dev


#####python3.7
ENV VERSION_PYTHON3 3.6.9
ENV URL_PYTHON3 "https://www.python.org/ftp/python/${VERSION_PYTHON3}/Python-${VERSION_PYTHON3}.tgz"
### Installing python3
RUN wget -q -O - $URL_PYTHON3 |tar -zxv && \
    cd Python-${VERSION_PYTHON3} && \
    ./configure --enable-optimizations && \
    make -j 8 && \
    make altinstall &&\
    cd .. && \
    cp ./Python-${VERSION_PYTHON3}/python /usr/local/bin && \
    rm -rf ./Python-${VERSION_PYTHON3} && \
    rm -rf /usr/lib/python2.7 /usr/lib/python3.5

WORKDIR /home/centos/mnt1/data


