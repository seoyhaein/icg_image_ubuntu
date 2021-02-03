#####################Dockerfile#####################
# Dockerfile
# MAINTAINER mjkam, dwkim, yhkim
# Software:         R
# Software Version: 
# Description:      R.3.2.5
# Website:          
# Provides:         ubuntu16.04 build-essential wget curl python3.5
# Base Image:       icg_java_1.8
#####################Installation#####################

FROM icg_java_1.8
RUN wget https://cran.rstudio.com/src/base/R-3/R-3.2.5.tar.gz && tar -xvf R-3.2.5.tar.gz && apt-get install -y gcc fort77 aptitude g++ xorg-dev libreadline-dev gfortran && cd ./R-3.2.5 && ./configure && ./configure --enable-R-shlib && make && make install && cd ../ && rm -rf R-3.2.5.tar.gz && cd ../ && rm -rf ./R-3.2.5
WORKDIR /home/centos/mnt1/data
