#####################Dockerfile#####################
# Dockerfile
# MAINTAINER mjkam, dwkim, yhkim
# Software:         R
# Software Version: 
# Description:      R.3.2.5
# Website:          
# Provides:         ubuntu16.04 build-essential wget curl python3.5
# Base Image:       icg_python_3.7.2 icg_r_3.2.5
#####################Installation#####################

FROM icg_python_3.7.2 as python_images

FROM icg_r_3.2.5
COPY --from=python_images /usr/bin/ /usr/bin
COPY --from=python_images /usr/local/bin/ /usr/local/bin
COPY --from=python_images /usr/local/lib/python3.7 /usr/local/lib/python3.7


WORKDIR /tmp
ENV VERSION 4.1.2.0

RUN apt-get install --yes unzip git tabix && apt-get autoclean

ADD https://raw.githubusercontent.com/broadinstitute/gatk/master/scripts/docker/gatkbase/install_R_packages.R /opt

RUN curl -L \
    https://github.com/broadinstitute/gatk/releases/download/${VERSION}/gatk-${VERSION}.zip -o gatk.zip \
    && unzip gatk.zip \
    && mv gatk-${VERSION} /opt \
    && ln -s /opt/gatk-${VERSION}/gatk /usr/local/bin/gatk \
    && Rscript /opt/install_R_packages.R \
    && rm -rf /tmp/*

WORKDIR /home/centos/mnt1/data
