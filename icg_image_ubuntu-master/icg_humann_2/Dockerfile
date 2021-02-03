#####################Dockerfile#####################
# Dockerfile
# MAINTAINER dwkim
# Base Image:       icg_anaconda3_5.3.0
#####################Installation#####################

FROM icg_anaconda3_5.3.0
RUN apt-get update -y && apt-get install -y \
    build-essential \
    cmake \
    libnss-sss \
    curl \
    vim \
    less \
    wget \
    libboost-all-dev \
    libtbb-dev \
    unzip \
    libbz2-dev \
    liblzma-dev \
    libjemalloc-dev git gcc make g++ cmake libboost-all-dev liblzma-dev libbz2-dev \
    ca-certificates zlib1g-dev curl unzip autoconf
WORKDIR /opt
RUN conda update --y conda
RUN conda install --y wget
RUN conda config --add channels bioconda && \
    conda install --y -c bioconda humann2 && \
    conda update --y humann2


WORKDIR /home/centos/mnt1/data
