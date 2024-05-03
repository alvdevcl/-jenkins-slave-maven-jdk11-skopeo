FROM jenkins/agent:jdk11

USER root

# install skopeo
RUN apt-get -y update && apt-get -y install skopeo

RUN chown -R 1001:0 $HOME && chmod -R g+rw $HOME


USER 1001
