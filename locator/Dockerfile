#
# GemFire 8 Locator Dockerfile
#
# https://github.com/dockerfile/java
# https://github.com/dockerfile/java/tree/master/oracle-java8
#

# Pull base gemfire image.
FROM pivotal/gemfire-base

RUN apt-get update && apt-get install -y supervisor
RUN mkdir -p /var/run/gfsh /var/log/supervisor

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY gemfire.properties /

#EXPOSE 41111 1099
#ENTRYPOINT gfsh "start locator --name=locator --port=41111 --properties-file=gemfire.properties --initial-heap=50m --max-heap=50m"
#ENTRYPOINT gfsh "start locator --name=locator --port=41111 --initial-heap=50m --max-heap=50m"

# Default ports:
# RMI/JMX 1099
# REST 8080
# PULE 7070
# LOCATOR 10334
# CACHESERVER 40404
EXPOSE  8080 41111 40404 1099 7070

VOLUME ["/data/"]
#CMD gfsh
CMD ["/usr/bin/supervisord"]


