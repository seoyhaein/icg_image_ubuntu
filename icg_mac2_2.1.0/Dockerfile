FROM icg_base_1.0

ADD https://bootstrap.pypa.io/get-pip.py /tmp/get-pip.py
# Install python and MACS2 v2.1.0
ENV MACS2_VERSION 2.1.0.20151222
RUN pip install numpy
RUN pip install MACS2==${MACS2_VERSION}
# Default command to execute at startup of the container

WORKDIR /home/centos/mnt1/data
