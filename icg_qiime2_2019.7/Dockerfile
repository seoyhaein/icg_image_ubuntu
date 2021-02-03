#####################Dockerfile#####################
# Dockerfile
# MAINTAINER dwkim
# Base Image:       icg_anaconda3_5.3.0
#####################Installation#####################

FROM icg_anaconda3_5.3.0

WORKDIR /opt
RUN conda update --y conda
RUN conda install --y wget
RUN wget https://data.qiime2.org/distro/core/qiime2-2019.7-py36-linux-conda.yml
RUN conda env create -n qiime2-2019.7 --file qiime2-2019.7-py36-linux-conda.yml
# OPTIONAL CLEANUP
RUN rm qiime2-2019.7-py36-linux-conda.yml
RUN echo "source activate qiime2-2019.7" >> ~/.bashrc
WORKDIR /home/centos/mnt1/data
