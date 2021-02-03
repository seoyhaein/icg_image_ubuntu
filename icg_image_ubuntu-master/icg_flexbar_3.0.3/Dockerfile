FROM icg_base_1.0

### Installing flexbar 3.0.3
RUN apt-get update -y && apt-get install -y cmake 
RUN mkdir -p /opt/flexbar/tmp \
    && cd /opt/flexbar/tmp \
    && wget https://github.com/seqan/flexbar/archive/v3.0.3.tar.gz \
    && wget https://github.com/seqan/seqan/releases/download/seqan-v2.2.0/seqan-library-2.2.0.tar.xz \
    && tar xzf v3.0.3.tar.gz \
    && tar xJf seqan-library-2.2.0.tar.xz \
    && mv seqan-library-2.2.0/include flexbar-3.0.3 \
    && cd flexbar-3.0.3 \
    && cmake . \
    && make \
    && cp flexbar /opt/flexbar/ \
    && cd / \
    && rm -rf /opt/flexbar/tmp
WORKDIR /home/centos/mnt1/data
