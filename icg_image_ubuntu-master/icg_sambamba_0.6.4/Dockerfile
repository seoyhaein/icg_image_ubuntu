FROM icg_base_1.0


### Installing Sambamba v0.6.4
RUN mkdir /opt/sambamba/ \
    && wget https://github.com/lomereiter/sambamba/releases/download/v0.6.4/sambamba_v0.6.4_linux.tar.bz2 \
    && tar --extract --bzip2 --directory=/opt/sambamba --file=sambamba_v0.6.4_linux.tar.bz2 \
    && ln -s /opt/sambamba/sambamba_v0.6.4 /usr/bin/sambamba
WORKDIR /home/centos/mnt1/data
