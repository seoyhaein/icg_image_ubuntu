#####################Dockerfile#####################
# Dockerfile
# MAINTAINER mjkam, dwkim, yhkim
# Software: varscan2
# Software Version: 2.4.2
# Description:
# Website:
# Provides:      
# Base Image: icg_java_1.7
#####################Installation#####################
FROM icg_samtools_1.9 as samtools_images
FROM icg_java_1.7
COPY --from=samtools_images /usr/local/bin/* /usr/local/bin/
WORKDIR /usr/local/bin
RUN wget https://github.com/dkoboldt/varscan/releases/download/2.4.2/VarScan.v2.4.2.jar && ln -s VarScan.v2.4.2.jar VarScan.jar

ENV PATH /usr/local/bin:$PATH
WORKDIR /home/centos/mnt1/data

