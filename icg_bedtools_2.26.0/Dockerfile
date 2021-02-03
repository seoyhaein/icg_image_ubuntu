FROM icg_base_1.0

ENV VERSION 2.26.0
ENV NAME bedtools2
ENV URL "https://github.com/arq5x/bedtools2/releases/download/v${VERSION}/bedtools-${VERSION}.tar.gz"

RUN apt-get update -qq | apt-get install -y zlib1g-dev
RUN wget -q -O - $URL | tar -zxv && \
cd ${NAME} && \
make -j 4 && \
cd .. && \
cp ./${NAME}/bin/bedtools /usr/local/bin/ && \
strip /usr/local/bin/*; true && \
rm -rf ./${NAME}/

# # And clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/* 
WORKDIR /home/centos/mnt1/data
