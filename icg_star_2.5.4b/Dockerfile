FROM icg_base_1.0

ENV VERSION_STAR 2.5.4b
ENV URL_STAR "https://github.com/alexdobin/STAR/archive/${VERSION_STAR}.tar.gz"

### Installing STAR
RUN apt-get install --yes build-essential gcc-multilib apt-utils zlib1g-dev g++ 

RUN wget -q -O - $URL_STAR | tar -zxv && \
    cd STAR-${VERSION_STAR}/source && \
    make -j 4 && \
    cp ./STAR /usr/local/bin && \
    rm -rf ../../STAR-${VERSION_STAR}

ENV PATH /usr/local/bin:$PATH
WORKDIR /home/centos/mnt1/data
