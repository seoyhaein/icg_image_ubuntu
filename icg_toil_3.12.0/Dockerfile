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
######
#Toil#
######
RUN pip install toil[cwl]==3.12.0
RUN cd /tmp/ \
    && wget --no-check-certificate https://raw.githubusercontent.com/tmooney/toil/3.12_lsf_fix/src/toil/batchSystems/lsfHelper.py \
    && mv -f lsfHelper.py /usr/local/lib/python2.7/dist-packages/toil/batchSystems/ \
    && wget --no-check-certificate https://raw.githubusercontent.com/tmooney/toil/3.12_lsf_fix/src/toil/batchSystems/lsf.py \
    && mv -f lsf.py /usr/local/lib/python2.7/dist-packages/toil/batchSystems/
RUN sed -i 's/select\[type==X86_64 && mem/select[mem/' /usr/local/lib/python2.7/dist-packages/toil/batchSystems/lsf.py


RUN apt-get update -y && apt-get install -y libnss-sss tzdata
RUN ln -sf /usr/share/zoneinfo/America/Chicago /etc/localtime

#LSF: Java bug that need to change the /etc/timezone.
#     The above /etc/localtime is not enough.
RUN echo "America/Chicago" > /etc/timezone
RUN dpkg-reconfigure --frontend noninteractive tzdata



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
