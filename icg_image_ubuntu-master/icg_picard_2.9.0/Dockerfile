#####################Dockerfile#####################
# Dockerfile
# MAINTAINER mjkam, dwkim, yhkim
# Software:         picard
# Software Version: 2.9.0
# Description:      
# Website:          
# Provides:         icg_java_1.8
# Base Image:       icg_java_1.8
#####################Installation#####################

FROM icg_java_1.8

# install picard
RUN wget -c https://github.com/broadinstitute/picard/releases/download/2.9.0/picard.jar && \
  chmod +x picard.jar && \
  mv picard.jar /usr/local/bin

WORKDIR /home/centos/mnt1/data
