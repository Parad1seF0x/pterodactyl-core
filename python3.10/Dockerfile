FROM        --platform=$TARGETOS/$TARGETARCH python:3.10-slim

LABEL       author="Michael Parker" maintainer="parker@pterodactyl.io"

RUN         apt update \
            && apt -y install git gcc g++ ca-certificates dnsutils curl iproute2 ffmpeg procps locales locales-all \
            && useradd -m -d /home/container container

USER        container
ENV         USER=container HOME=/home/container
ENV         LANGUAGE=ru_RU.UTF-8 LC_ALL=ru_RU.UTF-8 LANG=ru_RU.UTF-8
RUN         locale-gen ru_RU.UTF-8 && dpkg-reconfigure locales
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]
