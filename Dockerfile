# Docker file for Terria Inference BaseOS

FROM ubuntu:15.10
MAINTAINER Alistair Reid <alistair.reid@nicta.com.au>
RUN apt-get update && apt-get install -y \
  wget \
  build-essential \
  libopenblas-base \
  libopenblas-dev \
  python3 \
  python3-dev \
  python3-pip \
  libfreetype6-dev \
  libxft-dev \
  libhdf5-dev \
  libbz2-dev \
  liblzo2-dev \
  zlib1g-dev \
  gfortran \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip3 -v install ipython Cython numpy scipy matplotlib numexpr tables 

