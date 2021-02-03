#####################Dockerfile#####################
# Dockerfile
# MAINTAINER mjkam, dwkim, yhkim
# Software:         icg_base
# Software Version: 1.0 
# Description:      icg base image
# Website:          
# Provides:         ubuntu16.04 build-essential wget curl
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
    apt-get install -y perl-doc python2.7-doc 

RUN apt-get install -y python-pip && pip install --upgrade pip

RUN pip install awscli

WORKDIR /home/centos/mnt1/data

