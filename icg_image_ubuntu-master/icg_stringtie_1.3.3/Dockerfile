FROM icg_base_1.0

### Installing stringtie 1.3.3
RUN mkdir /opt/stringtie/ \
    && cd /opt/stringtie \
    && wget http://ccb.jhu.edu/software/stringtie/dl/stringtie-1.3.3.Linux_x86_64.tar.gz \
    && tar -xzvf stringtie-1.3.3.Linux_x86_64.tar.gz \
    && ln -s /opt/stringtie/stringtie-1.3.3.Linux_x86_64/stringtie /usr/bin/stringtie \
    && rm stringtie-1.3.3.Linux_x86_64.tar.gz
WORKDIR /home/centos/mnt1/data
