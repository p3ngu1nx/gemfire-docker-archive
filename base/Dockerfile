#
# GemFire 8 Base Image Dockerfile
#
# https://github.com/dockerfile/java
# https://github.com/dockerfile/java/tree/master/oracle-java8
#

# Pull base image.
FROM ubuntu

MAINTAINER Boris Kravtsov <bkravtsov@pivotal.io>

# Install Java.
RUN apt-get update
RUN apt-get --assume-yes install software-properties-common
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update
RUN apt-get install -y oracle-java8-installer
RUN rm -rf /var/lib/apt/lists/*
RUN rm -rf /var/cache/oracle-jdk8-installer
RUN apt-get update && apt-get install -y supervisor
RUN mkdir -p /var/run/gfsh /var/log/supervisor


# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

ADD Pivotal_GemFire.tar .

ENV GEMFIRE /Pivotal_GemFire

ENV PATH $PATH:$GEMFIRE/bin

ENV GF_JAVA $JAVA_HOME/bin/java

