#####################Dockerfile#####################
# Dockerfile
# MAINTAINER dwkim
# Base Image:       icg_anaconda3_5.3.0
#####################Installation#####################

FROM icg_base_1.0

WORKDIR /opt
RUN wget https://github.com/weizhongli/cdhit/releases/download/V4.8.1/cd-hit-v4.8.1-2019-0228.tar.gz
RUN tar cd-hit-v4.8.1-2019-0228.tar.gz
RUN apt-get install zlib1g-dev
RUN cd cd-hit-v4.8.1-2019-0228
RUN echo "source activate qiime2-2019.7" >> ~/.bashrc
WORKDIR /home/centos/mnt1/data
