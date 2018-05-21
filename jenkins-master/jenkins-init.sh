/usr/local/bin/jenkins.sh & > /dev/null
sleep 120
curl http://localhost:8080/jnlpJars/jenkins-cli.jar -o /tmp/jenkins-cli.jar -u admin:$(cat /var/jenkins_home/secrets/initialAdminPassword)
java -jar /tmp/jenkins-cli.jar -s http://localhost:8080 -auth admin:$(cat /var/jenkins_home/secrets/initialAdminPassword) install-plugin docker-plugin

