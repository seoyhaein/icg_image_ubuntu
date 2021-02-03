#####################Dockerfile#####################
# Dockerfile
# MAINTAINER mjkam, dwkim, yhkim
# Software:         icg_base
# Software Version: 0.7.15 
# Description:      icg bwa image
# Website:          
# Provides:         ubuntu16.04 build-essential wget curl 
# Base Image:       icg_base_1.0
#####################Installation#####################
#https://sourceforge.net/projects/bio-bwa/
FROM icg_base_1.0
RUN apt-get update
# Install compiler and perl stuff
RUN apt-get install --yes build-essential gcc-multilib apt-utils zlib1g-dev wget utils.o git

# Get source code from git
WORKDIR /tmp
RUN wget https://sourceforge.net/projects/bio-bwa/files/bwa-0.7.17.tar.bz2/download
WORKDIR /tmp/bwa

# Compile
RUN make
RUN cp -p bwa /usr/local/bin

# Cleanup
RUN rm -rf /tmp/bwa
RUN apt-get --yes remove wget git
RUN apt-get clean

WORKDIR /home/centos/mnt1/data
