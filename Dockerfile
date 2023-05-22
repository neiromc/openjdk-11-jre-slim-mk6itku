FROM openjdk:11-jre-slim

RUN DEBIAN_FRONTEND=noninteractive; apt update \
 && apt install -y fontconfig fonts-dejavu musl-dev \
 && rm -rf /var/lib/apt/lists/*

RUN ln -s /usr/lib/x86_64-linux-gnu/libfontconfig.so.1.12.0 /usr/lib/libfontconfig.so && \
    ln -s /usr/lib/x86_64-linux-gnu/libuuid.so.1.3.0 /usr/lib/libuuid.so.1 && \
    ln -s /usr/lib/x86_64-linux-musl/libc.so /lib/libc.musl-x86_64.so.1

ENV LD_LIBRARY_PATH /usr/lib
