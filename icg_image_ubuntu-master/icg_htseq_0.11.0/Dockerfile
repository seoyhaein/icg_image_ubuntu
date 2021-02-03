FROM icg_base_1.0

ENV PACKAGE_VERSION 0.11.0

RUN apt-get update -qq && apt-get install --yes build-essential python2.7-dev python-numpy python-matplotlib python-pip libbz2-1.0 libbz2-dev libbz2-ocaml libbz2-ocaml-dev zlib1g-dev liblzma-dev

RUN pip install --upgrade pip
RUN pip install htseq==${PACKAGE_VERSION} 


# # And clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/* 
WORKDIR /home/centos/mnt1/data
