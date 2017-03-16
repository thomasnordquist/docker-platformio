FROM ubuntu:16.04

RUN apt-get update \
	&& apt-get install -y python python-pip \
	&& pip install --no-cache-dir platformio \
	&& apt-get -y remove python-pip \
	&& apt-get -y autoremove \
	&& rm -rf /var/lib/apt/lists/*

RUN adduser jenkins
