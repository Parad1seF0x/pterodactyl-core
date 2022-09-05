FROM        --platform=$TARGETOS/$TARGETARCH python:3.10-slim

LABEL       author="Michael Parker" maintainer="parker@pterodactyl.io"

RUN         apt update \
            && apt -y install git gcc g++ ca-certificates dnsutils curl iproute2 ffmpeg procps \
            && useradd -m -d /home/container container

USER        container
ENV         USER=container HOME=/home/container
ENV         LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]