FROM icg_base_1.0

RUN apt-get update && apt-get install --yes unzip wget gcc g++ libtbb-dev make zlib1g-dev libbz2-dev liblzma-dev
ENV VERSION 1.4.1

WORKDIR /opt
ADD https://github.com/samtools/bcftools/releases/download/${VERSION}/bcftools-${VERSION}.tar.bz2 /opt

RUN tar xvjf /opt/bcftools-${VERSION}.tar.bz2 && \
    cd /opt/bcftools-${VERSION} && \
    make && \
    make install

ENV PATH ${PATH}:/opt/bcftools-${VERSION}/bin
# # And clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/* 
WORKDIR /home/centos/mnt1/data
