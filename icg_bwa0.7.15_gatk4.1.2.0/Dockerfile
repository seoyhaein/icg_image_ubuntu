FROM icg_samtools1.9_bwa0.7.15 as bwa_samtools_images

FROM icg_gatk_4.1.2.0
COPY --from=bwa_samtools_images /usr/local/bin/* /usr/local/bin/
RUN apt-get clean

WORKDIR /home/centos/mnt1/data
