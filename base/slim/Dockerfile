FROM debian:stretch-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    bzip2 \
    unzip \
    xz-utils \
    wget \
    curl \
    netcat \
    ca-certificates \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && rm -rf /var/cache/apk/* \
  && rm -fr /tmp/* /var/tmp/*