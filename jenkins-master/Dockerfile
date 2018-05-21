FROM jenkins/jenkins:lts-slim
USER root

RUN apt-get -y update
RUN apt-get -y install curl
#COPY jenkins-init.sh /usr/local/bin/jenkins-init.sh
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

USER jenkins
COPY config.xml /var/jenkins_home/config.xml
#RUN /usr/local/bin/jenkins-init.sh
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/jenkins.sh"]
