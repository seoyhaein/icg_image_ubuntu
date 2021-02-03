FROM icg_miniconda_1.0
WORKDIR /opt
RUN echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc
ENV PATH /opt/conda/envs/pcgr/bin:$PATH
RUN echo 'export PATH=/opt/conda/bin:$PATH' >> /etc/profile.d/conda.sh

RUN git clone https://github.com/sigven/pcgr.git
ENV PATH=$PATH:/opt/pcgr
ENV PATH=$PATH:/opt/pcgr/src/pcgr
ENV PYTHONPATH=:/opt/pcgr/src/pcgr/lib:${PYTHONPATH}
RUN conda create -n pcgr -c conda-forge -c bioconda -c pcgr pcgr
RUN echo "conda activate pcgr" >> ~/.bashrc


#WORKDIR /opt/pcgr
#Reference download #GRch37
#RUN gdown https://drive.google.com/uc?id=1vIESS8NxiITUnrqZoWOdNk1YsklH8f1C #grch37
#RUN gzip -dc pcgr.databundle.grch37.20190519.tgz | tar xvf -
#RUN rm -f pcgr.databundle.grch37.20190519.tgz

#Reference download #grch38
#RUN gdown https://drive.google.com/uc?id=1eoMgc2AzK1w1jrX2LSLEas4YJPiQJx1B #grch38
#RUN gzip -dc pcgr.databundle.grch38.20190519.tgz | tar xvf -
#RUN rm -f pcgr.databundle.grch38.20190519.tgz

WORKDIR /home/centos/mnt1/data

