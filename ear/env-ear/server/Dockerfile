#
# GemFire 8 Locator Dockerfile
#
# https://github.com/dockerfile/java
# https://github.com/dockerfile/java/tree/master/oracle-java8
#

# Pull base gemfire image.
FROM boriza/gemfire-base

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
#COPY custom-classes/ /custom-classes/
COPY gemfire.properties /
#COPY bin/gfsh $GEMFIRE/bin/
COPY bin/gemfire.jar $GEMFIRE/lib/

#overwrite an existing xml file
COPY xml/Server.xml $GEMFIRE/SampleCode/quickstart/xml
#RUN mkdir -p /Pivotal_GemFire/SampleCode/quickstart/server1

ENV SERVER_NAME $(date +NAME%Y%m%H%M%S)

WORKDIR $GEMFIRE/SampleCode/quickstart

# Default ports:
# RMI/JMX 1099
# REST 8080
# PULE 7070
# LOCATOR 10334
# CACHESERVER 40404
EXPOSE  8080 10334 40404 1099 7070

CMD ["/usr/bin/supervisord"]