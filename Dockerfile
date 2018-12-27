FROM ubuntu:16.04

MAINTAINER Chiachun Chiu <chiachun.chiu@gmail.com>

ADD ["https://mirror.oxfordnanoportal.com/software/analysis/ont-guppy-cpu_2.1.3_linux64.tar.gz", "/tmp/ont-guppy-cpu_2.1.3_linux64.tar.gz"]

WORKDIR /workdir

RUN cd /tmp && tar zxvf ont-guppy-cpu_2.1.3_linux64.tar.gz && \
	mv ont-guppy-cpu /opt && \
	rm -rf ont-guppy-cpu_2.1.3_linux64.tar.gz && \
	mkdir -p /workdir && cd /workdir

ENV PATH="/opt/ont-guppy-cpu/bin:${PATH}"
