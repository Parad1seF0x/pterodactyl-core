FROM openjdk:11-jdk-buster

RUN printf "deb [arch=amd64] https://apt.bell-sw.com/ stable main" > /etc/apt/sources.list.d/bellsoft.list

RUN apt update \
    && apt upgrade -y \
    && wget -q -O - https://download.bell-sw.com/pki/GPG-KEY-bellsoft | apt-key add - \
    && apt install bellsoft-java11 \
    && apt install -y openjfx curl ca-certificates openssl git tar bash sqlite fontconfig \
    && adduser -D -h /home/container container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]