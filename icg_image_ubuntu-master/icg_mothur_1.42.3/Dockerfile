#####################Dockerfile#####################
# Dockerfile
# MAINTAINER dwkim
# Base Image:       icg_anaconda3_5.3.0
#####################Installation#####################
FROM icg_base_1.0
WORKDIR /opt
RUN wget https://github.com/mothur/mothur/releases/download/v.1.42.3/Mothur.linux_64.zip
RUN apt-get install unzip
RUN unzip Mothur.linux_64.zip
RUN rm Mothur.linux_64.zip
ENV PATH /opt/mothur:$PATH
#excutation
##./mothur sh
#WORKDIR /home/centos/mnt1/data
