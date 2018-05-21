FROM debian:stable-slim as docker-cli
USER root
RUN apt-get -y  update
RUN apt-get install -y wget gzip tar
RUN wget https://download.docker.com/linux/static/stable/x86_64/docker-18.03.1-ce.tgz
RUN tar -xzvf docker-18.03.1-ce.tgz -C /tmp


FROM jenkins/jnlp-slave:3.19-1
USER root
COPY --from=docker-cli /tmp/docker/docker /usr/bin
