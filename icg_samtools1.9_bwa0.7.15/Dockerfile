FROM icg_samtools_1.9 as samtools_images

FROM icg_bwa_0.7.15
COPY --from=samtools_images /usr/local/bin/samtools /usr/local/bin/samtools
RUN apt-get clean
