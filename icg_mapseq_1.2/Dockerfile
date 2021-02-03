#####################Dockerfile#####################
# Dockerfile
# MAINTAINER dwkim
# Base Image:       icg_anaconda3_5.3.0
#####################Installation#####################
# Beta
FROM icg_base_1.0
WORKDIR /opt
RUN apt-get update 
RUN apt-get install -y  build-essential git subversion wget libncurses5-dev 
RUN apt-get install -y autotools-dev autoconf libtool
#RUN autoreconf --install
#RUN git clone https://github.com/jfmrod/MAPseq.git
#WORKDIR /opt/MAPseq
#RUN ./setup.sh && ./bootstrap 
#RUN ./configure --prefix=/opt/MAPseq
#cp 
#RUN&& make && make install
