#####################Dockerfile#####################
# Dockerfile
# MAINTAINER mjkam, dwkim, yhkim
# Software: gatk
# Software Version: 3.8.1
# Description:      
# Website:          
# Provides:         samtools1.9 picard2.9 java1.8 r python3.7
# Base Image:       icg_python_1.8
#####################Installation#####################

FROM icg_samtools_1.9 as samtools_images
FROM icg_picard_2.9.0 as picard_images
FROM icg_java_1.8
COPY --from=samtools_images /usr/local/bin/samtools /usr/local/bin
COPY --from=picard_images /usr/local/bin/picard.jar /usr/local/bin

RUN cd /tmp/ \
    && wget -O /tmp/gatk3.8.1.0.tar.bz2 'https://software.broadinstitute.org/gatk/download/auth?package=GATK-archive&version=3.8-1-0-gf15c1c3ef' \
    && tar -xvf gatk3.8.1.0.tar.bz2 \
    && cp GenomeAnalysisTK-3.8-1-0-gf15c1c3ef/GenomeAnalysisTK.jar /usr/local/bin/GenomeAnalysisTK-3.8.1.jar \
    && rm -rf /tmp/*

WORKDIR /home/centos/mnt1/data
