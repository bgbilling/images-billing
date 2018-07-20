FROM openjdk:8-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    bzip2 \
    unzip \
    xz-utils \
    wget \
    curl \
    netcat \
    ca-certificates \
    sudo \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && rm -rf /var/cache/apk/* \
  && rm -fr /tmp/* /var/tmp/*
