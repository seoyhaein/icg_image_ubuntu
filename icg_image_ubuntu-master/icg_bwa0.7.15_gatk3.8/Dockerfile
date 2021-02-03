FROM icg_bwa_0.7.15 as bwa_images
FROM icg_picard_2.9.0 as picard_images

FROM icg_gatk_3.8
COPY --from=bwa_images /usr/local/bin/bwa /usr/local/bin/bwa
OPY --from=picard_images /usr/local/bin/picard.jar /usr/local/bin/picard.jar

RUN apt-get clean
