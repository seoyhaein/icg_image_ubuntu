FROM icg_base_1.0


ENV VERSION_BOWTIE2 2.2.6
ENV URL_BOWTIE2 "https://github.com/BenLangmead/bowtie2/archive/v${VERSION_BOWTIE2}.tar.gz"

### Installing bowtie2
RUN wget -q -O - $URL_BOWTIE2 | tar -zxv && \
    cd bowtie2-${VERSION_BOWTIE2} && \
    make -j 4 && \
    cd ../ && \
    mkdir /tools && \
    cp ./bowtie2-${VERSION_BOWTIE2}/bowtie2* /tools && \
    rm -rf ./bowtie2-${VERSION_BOWTIE2}

ENV PATH /tools:$PATH
WORKDIR /home/centos/mnt1/data
