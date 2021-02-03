FROM icg_java_1.7

RUN apt-get install -y unzip
WORKDIR /opt
RUN wget http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/Trimmomatic-0.36.zip
RUN unzip Trimmomatic-0.36
RUN mv Trimmomatic-0.36 trimmomatic

ENV PATH /opt/trimmomatic/:$PATH
WORKDIR /home/centos/mnt1/data
