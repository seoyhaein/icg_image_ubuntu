FROM icg_base_1.0

RUN apt-get update && apt-get install -y wget zlib1g-dev
RUN wget -O /opt/MuSEv1.0rc http://bioinformatics.mdanderson.org/Software/MuSE/MuSEv1.0rc_submission_c039ffa
RUN chmod +x /opt/MuSEv1.0rc

ENV PATH /usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt

# # And clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/* 
WORKDIR /home/centos/mnt1/data
