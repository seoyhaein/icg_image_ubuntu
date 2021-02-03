#####################Dockerfile#####################
# Dockerfile
# MAINTAINER mjkam, dwkim, yhkim
# Base Image:       icg_anaconda3_5.3.0
#####################Installation#####################

FROM icg_anaconda3_5.3.0


WORKDIR /opt
RUN git clone https://github.com/ewels/MultiQC.git && \
    cd MultiQC && \
    python setup.py install

ENV PATH /opt/MultiQC:$PATH
WORKDIR /home/centos/mnt1/data
