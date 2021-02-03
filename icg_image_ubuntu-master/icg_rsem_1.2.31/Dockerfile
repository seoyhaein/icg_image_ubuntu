#####################Dockerfile#####################
# Dockerfile
# MAINTAINER mjkam, dwkim, jhkim
# Software:         RSEM  [BOWTIE  BOWTIE2  STAR    R       python]
# Software Version: 1.2.31 [1.2.0   2.2.6    2.5.4b latest  bowtie-dependent]
# Description:      RSEM toolkit for BioWardrobe
# Website:          http://deweylab.github.io/RSEM/README.html
#                   http://bowtie-bio.sourceforge.net/index.shtml
#                   http://bowtie-bio.sourceforge.net/bowtie2/index.shtml
#                   https://github.com/alexdobin/STAR
# Provides:         rsem, STAR, bowtie, bowtie2 R Python
# Base Image:       
# Build:   docker build --tag icg_rsem:1.2.31 -f rsem_Dockerfile .
#####################Installation#####################
FROM icg_r_latest
#FROM icg_r_3.2.5



ENV VERSION_RSEM 1.2.31
ENV URL_RSEM "https://github.com/deweylab/rsem/archive/v${VERSION_RSEM}.tar.gz"

ENV VERSION_STAR 2.5.4b
ENV URL_STAR "https://github.com/alexdobin/STAR/archive/${VERSION_STAR}.tar.gz"

ENV VERSION_BOWTIE 1.2.0
ENV URL_BOWTIE "https://github.com/BenLangmead/bowtie/archive/v${VERSION_BOWTIE}.tar.gz"

ENV VERSION_BOWTIE2 2.2.6
ENV URL_BOWTIE2 "https://github.com/BenLangmead/bowtie2/archive/v${VERSION_BOWTIE2}.tar.gz"


RUN apt-get update && apt-get install -y make g++ apt-utils gcc-multilib apt-utils zlib1g-dev && \
    
### Installing STAR

    wget -q -O - $URL_STAR | tar -zxv && \
    cd STAR-${VERSION_STAR}/source && \
    make -j 4 && \
    cd ../../ && \
    cp ./STAR-${VERSION_STAR}/bin/Linux_x86_64_static/STAR /usr/local/bin/ && \
    rm -rf ./STAR-${VERSION_STAR} && \

### Installing bowtie

    wget -q -O - $URL_BOWTIE | tar -zxv && \
    cd bowtie-${VERSION_BOWTIE} && \
    make -j 4 && \
    cd .. && \
    cp ./bowtie-${VERSION_BOWTIE}/bowtie /usr/local/bin/ && \
    cp ./bowtie-${VERSION_BOWTIE}/bowtie-* /usr/local/bin/ && \
    rm -rf ./bowtie-${VERSION_BOWTIE} && \

### Installing bowtie2

    wget -q -O - $URL_BOWTIE2 | tar -zxv && \
    cd bowtie2-${VERSION_BOWTIE2} && \
    make -j 4 && \
    cd .. && \
    cp ./bowtie2-${VERSION_BOWTIE2}/bowtie2 /usr/local/bin/ && \
    cp ./bowtie2-${VERSION_BOWTIE2}/bowtie2-* /usr/local/bin/ && \
    rm -rf ./bowtie2-${VERSION_BOWTIE2} && \

### Installing RSEM

    wget -q -O - $URL_RSEM | tar -zxv && \
    cd RSEM-${VERSION_RSEM} && \
    make -j 4 && \
    make install && \
    make ebseq && \
    cp rsem-generate-ngvector rsem-run-ebseq rsem-control-fdr /usr/local/bin/ && \
    cd .. && \
    rm -rf ./RSEM-${VERSION_RSEM} && \
    strip /usr/local/bin/*; true
ENV PATH /usr/local/bin:$PATH
