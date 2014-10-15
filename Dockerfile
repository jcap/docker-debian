# based off https://github.com/maxexcloo/Docker
FROM debian:latest
MAINTAINER John Cappiello <jcap@codesimply.com>
ADD etc /etc
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install -y ca-certificates inotify-tools vim pwgen unzip wget
RUN apt-get clean
