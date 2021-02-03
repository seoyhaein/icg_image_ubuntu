#####################Dockerfile#####################
# Dockerfile
# MAINTAINER mjkam, dwkim, yhkim
# Software: gatk
# Software Version: 3.8.1
# Description:      
# Website:          
# Provides:         ubuntu16.04 java r python
# Base Image:       icg_python_3.7.2 icg_r_3.2.5
#####################Installation#####################

FROM icg_samtools_1.9 as samtools_images
FROM icg_picard_2.9.0 as picard_images
FROM icg_java_1.7
COPY --from=samtools_images /usr/local/bin/samtools /usr/local/bin
COPY --from=picard_images /usr/local/bin/picard.jar /usr/local/bin

WORKDIR /home/centos/mnt1/data

