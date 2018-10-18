FROM jenkins/jenkins:lts

LABEL Author="Luiz Henrique Soares"

ARG master_image_version="v.2.2.2"
ENV master_image_version $master_image_version

USER jenkins

# Plugins Install
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

# Auto Setup Scripts
COPY src/main/groovy/* /usr/share/jenkins/ref/init.groovy.d/
COPY src/main/resources/*.properties /var/jenkins_home/config/
COPY src/main/resources/initials/*.file /var/jenkins_home/config/initials/

# Para configuracoes de Seguranca
COPY .ssh/* /var/jenkins_home/.ssh/
