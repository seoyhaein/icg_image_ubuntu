#####################Dockerfile#####################
FROM icg_r_3.2.5


# fastqc requires java
RUN apt-get update && apt-get install -y curl unzip perl

RUN apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*

ENV QUALIMAP_VERSION=2.2.1

# Install BamQC
RUN wget --quiet -O qualimap_v${QUALIMAP_VERSION}.zip \
    https://bitbucket.org/kokonech/qualimap/downloads/qualimap_v${QUALIMAP_VERSION}.zip \
    && unzip qualimap_v${QUALIMAP_VERSION}.zip -d /opt/ \
    && rm qualimap_v${QUALIMAP_VERSION}.zip \
    && mv /opt/qualimap_v${QUALIMAP_VERSION} /opt/qualimap

 

ENV PATH=$PATH:/opt/qualimap
WORKDIR /home/centos/mnt1/data
