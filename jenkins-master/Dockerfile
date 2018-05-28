FROM jenkins/jenkins:lts-slim
USER root
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

RUN apt-get -y update
RUN apt-get -y install curl
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

USER jenkins
COPY security.groovy /usr/share/jenkins/ref/init.groovy.d/security.groovy

COPY config.xml /var/jenkins_home/config.xml

RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/jenkins.sh"]
