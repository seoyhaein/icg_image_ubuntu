FROM icg_base_1.0
### Installing kallisto v0.43.1
RUN mkdir /opt/kallisto && cd /opt/kallisto && \
    wget https://github.com/pachterlab/kallisto/releases/download/v0.43.1/kallisto_linux-v0.43.1.tar.gz && \
    tar -xzvf kallisto_linux-v0.43.1.tar.gz && ln -s /opt/kallisto/kallisto_linux-v0.43.1/kallisto /usr/bin/kallisto
WORKDIR /home/centos/mnt1/data
