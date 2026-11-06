FROM debian:stable-slim

ENV DEBIAN_FRONTEND='noninteractive'

RUN set -eux && \
    printf 'APT::Install-Recommends "0";\nAPT::Install-Suggests "0";\n' > /etc/apt/apt.conf.d/999norecommend && \
    apt-get update && \
    apt-get -y full-upgrade && \
    apt-get -y install procps net-tools vim-tiny iputils-ping tcpdump curl ca-certificates dnsutils && \
    rm -rf /var/lib/apt/lists/*

