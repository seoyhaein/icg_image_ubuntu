#####################Dockerfile#####################
# Dockerfile
# MAINTAINER dwkim
# Base Image:       icg_anaconda3_5.3.0
#####################Installation#####################

FROM icg_anaconda3_5.3.0

WORKDIR /opt
RUN conda update --y conda
RUN conda install --y wget
RUN conda config --add channels defaults && \
    conda config --add channels bioconda && \
    conda update -y conda && \
    conda install -y -c bioconda metaphlan2

WORKDIR /home/centos/mnt1/data
