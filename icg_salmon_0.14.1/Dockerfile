FROM icg_base_1.0
ENV PACKAGES git gcc make g++ cmake libboost-all-dev liblzma-dev libbz2-dev \
    ca-certificates zlib1g-dev curl unzip autoconf
ENV SALMON_VERSION 0.14.1

# salmon binary will be installed in /opt/salmon/bin/salmon

### don't modify things below here for version updates etc.

WORKDIR /opt

RUN apt-get update && \
    apt-get install -y --no-install-recommends ${PACKAGES} cmake \
    build-essential \
    cmake \
    libnss-sss \
    curl \
    vim \
    less \
    wget \
    libboost-all-dev \
    libtbb-dev \
    unzip \
    libbz2-dev \
    liblzma-dev \
    libjemalloc-dev git gcc make g++ cmake libboost-all-dev liblzma-dev libbz2-dev \
    ca-certificates zlib1g-dev curl unzip autoconf


RUN curl -k -L https://github.com/COMBINE-lab/salmon/archive/v${SALMON_VERSION}.tar.gz -o /opt/salmon-v${SALMON_VERSION}.tar.gz
RUN tar xzf /opt/salmon-v${SALMON_VERSION}.tar.gz
WORKDIR /opt/salmon-v${SALMON_VERSION} 
RUN mkdir /opt/salmon-v${SALMON_VERSION}/build
WORKDIR /opt/salmon-v${SALMON_VERSION}/build
RUN cmake .. -DCMAKE_INSTALL_PREFIX=/usr/local && make && make install


ENV PATH /opt/salmon-${SALMON_VERSION}/bin:${PATH}
WORKDIR /home/centos/mnt1/data
