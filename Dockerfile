FROM ubuntu:xenial
MAINTAINER orangain@gmail.com

WORKDIR /work

RUN apt-get update && \
	apt-get install -y --no-install-recommends wget

RUN wget http://http.debian.net/debian/pool/main/o/opencv/opencv_3.0.0+dfsg.orig.tar.xz

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y dpkg-dev python3 python3-numpy python3-dev

RUN DEBIAN_FRONTEND=noninteractive apt-get build-dep -y opencv

RUN apt-get install -y libgdal-dev libvtk6-dev doxygen
