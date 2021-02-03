#####################Dockerfile#####################
# Dockerfile
# MAINTAINER mjkam, dwkim, yhkim
# Software: strelka
# Software Version: 2.9.2
# Description:      
# Website:         https://github.com/Illumina/strelka/blob/v2.9.x/docs/userGuide/installation.md 
# Provides:         
# Base Image:       icg_python_3.7.2
#####################Installation#####################
FROM icg_python_3.7.2 

#Prerequisites to build
RUN apt-get update -qq \ apt-get install -y -qq bzip2 gcc g++ make zlib1g-devi rsync perl-doc 
#Note that there are two other dependencies: cmake and boost. These are different than the requirements discussed above, in that they can optionally be provided by the user. They will automatically be built from source if not detected. The minimum required versions of these tools for users planning to provide them to the build process are

#cmake 2.8.12+
#boost 1.58.0+ (must include static libraries)

WORKDIR /tools/strelka
RUN wget https://github.com/Illumina/strelka/releases/download/v2.9.2/strelka-2.9.2.centos6_x86_64.tar.bz2 \
     # decompress
     tar xvjf strelka-2.9.2.centos6_x86_64.tar.bz2 \
     # ../strelka-${STRELKA_VERSION}.release_src/configure --jobs=4 --prefix=/path/to/install
     # run demo to check successful installation
     bash strelka-2.9.2.centos6_x86_64/bin/runStrelkaSomaticWorkflowDemo.bash \
     bash strelka-2.9.2.centos6_x86_64/bin/runStrelkaGermlineWorkflowDemo.bash 

#strelka requires a couple steps to run, so add a helper script to sequence those
COPY strelka_helper.pl /usr/bin/strelka_helper.pl
COPY add_strelka_gt.pl /usr/bin/add_strelka_gt.pl


WORKDIR /home/centos/mnt1/data
