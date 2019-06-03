FROM debian:stretch
LABEL maintainer="Eclipsim Developers <dev@eclipsim.org>"
LABEL description="Dockerised EclipsimCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
