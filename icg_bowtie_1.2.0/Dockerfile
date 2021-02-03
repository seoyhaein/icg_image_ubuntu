FROM icg_base_1.0

ENV VERSION_BOWTIE 1.2.0
ENV URL_BOWTIE "https://github.com/BenLangmead/bowtie/archive/v${VERSION_BOWTIE}.tar.gz"

### Installing bowtie

RUN wget -q -O - $URL_BOWTIE | tar -zxv && \
    cd bowtie-${VERSION_BOWTIE} && \
    make -j 4 && \
    cd .. && \
    cp ./bowtie-${VERSION_BOWTIE}/bowtie /usr/local/bin/ && \
    cp ./bowtie-${VERSION_BOWTIE}/bowtie-* /usr/local/bin/ && \
    rm -rf ./bowtie-${VERSION_BOWTIE}

ENV PATH /usr/local/bin:$PATH
WORKDIR /home/centos/mnt1/data
