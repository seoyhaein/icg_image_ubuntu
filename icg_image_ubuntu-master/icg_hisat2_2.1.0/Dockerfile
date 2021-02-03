#####################Dockerfile#####################
FROM icg_base_1.0
RUN apt-get update -y && apt-get install -y \
    build-essential \
    bzip2 \
    cmake \
    default-jdk \
    git \
    libnss-sss \
    libtbb2 \
    libtbb-dev \
    ncurses-dev \
    nodejs \
    python-dev \
    python-pip \
    tzdata \
    unzip \
    wget \
    zlib1g \
    gcc \
    g++ \
    zlib1g-dev

RUN mkdir /opt/hisat2/ \
    && wget ftp://ftp.ccb.jhu.edu/pub/infphilo/hisat2/downloads/hisat2-2.1.0-Linux_x86_64.zip \
    && unzip -d /opt/hisat2/ hisat2-2.1.0-Linux_x86_64.zip \
    && ln -s /opt/hisat2/hisat2-2.1.0/hisat2 /usr/bin/hisat2 \
    && rm hisat2-2.1.0-Linux_x86_64.zip

WORKDIR /home/centos/mnt1/data
