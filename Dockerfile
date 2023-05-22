FROM openjdk:11-jre-slim

RUN DEBIAN_FRONTEND=noninteractive; apt update \
 && apt install -y fontconfig fonts-dejavu \
 && rm -rf /var/lib/apt/lists/*
RUN ln -s /usr/lib/libfontconfig.so.1 /usr/lib/libfontconfig.so && \
    ln -s /lib/libuuid.so.1 /usr/lib/libuuid.so.1 && \
    ln -s /lib/libc.musl-x86_64.so.1 /usr/lib/libc.musl-x86_64.so.1
ENV LD_LIBRARY_PATH /usr/lib
