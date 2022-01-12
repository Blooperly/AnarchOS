# AnarchOS Dockerfile
# docker build -t anarchos .
# docker run --rm -i -t --mount "type=bind,source=C:\Users\Jason\Desktop\AnarchOS\trunk\AnarchOS Source\,target=/mnt/shared/" anarchos

# Base container from latest Debian
FROM debian:latest

# Modify filesystem
ENV SHELL=/bin/bash
RUN mkdir /mnt/shared/
COPY ./bashconfig/* /root/

# Install necessary packages
RUN apt-get update && apt-get install -y \
	avrdude \
	avr-libc \
	bc \
	binutils \
	binutils-avr \
	bison \
	build-essential \
	bzip2 \
	cpio \
	curl \
	cvs \
	file \
	flex \
	g++ \
	gcc \
	gcc-avr \
	git \
	libncurses-dev \
	libssl-dev \
	make \
	man-db \
	mercurial \
	nano \
	patch \
	python3 \
	rsync \
	subversion \
	unzip \
	wget \
	xz-utils \
	&& rm -rf /var/lib/apt/lists/*
	
# Prepare for run
WORKDIR /
CMD ["/bin/bash", "-l"]