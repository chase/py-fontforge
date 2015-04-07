FROM ubuntu:14.04

COPY *.deb /tmp/

RUN apt-get update && \
    dpkg -i /tmp/libfontforge1-trusty_amd64.deb || \
    apt-get -fy install && \
    dpkg -i /tmp/python-fontforge-trusty_amd64.deb || \
    apt-get -fy install && \
    rm -rf /tmp/*

WORKDIR /data

CMD ["bash"]
