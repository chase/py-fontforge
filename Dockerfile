FROM ubuntu:14.04

COPY *.deb /tmp/

RUN apt-get update && \
    dpkg -i /tmp/libfontforge1-trusty_amd64.deb || \
    dpkg -i /tmp/python-fontforge-trusty_amd64.deb || \
    apt-get -fy install && \
    rm -rf /tmp/*

RUN apt-get -y install ca-certificates openssl zip

WORKDIR /data

CMD ["bash"]
