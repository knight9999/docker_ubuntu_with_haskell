FROM ubuntu:18.04

MAINTAINER KENICHI NAITO

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y

RUN apt-get install -y wget build-essential cmake vim

RUN wget -qO- https://get.haskellstack.org/ | sh

RUN echo export PATH='/root/.local/bin:$PATH' >> ~/.bashrc
RUN echo export LANG=C.UTF-8 >> ~/.bashrc

