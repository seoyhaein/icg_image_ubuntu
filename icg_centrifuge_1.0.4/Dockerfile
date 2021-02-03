#####################Dockerfile#####################
# Dockerfile
# MAINTAINER dwkim
# Base Image:    icg_base_1.0
#####################Installation#####################

FROM icg_base_1.0

WORKDIR /opt
RUN wget https://github.com/infphilo/centrifuge/archive/v1.0.4-beta.tar.gz
RUN tar -xvf v1.0.4-beta.tar.gz
RUN rm -rf v1.0.4-beta.tar.gz
WORKDIR /opt/centrifuge-1.0.4-beta
RUN make
WORKDIR /home/centos/mnt1/data
