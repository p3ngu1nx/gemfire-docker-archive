#
# GemFire 8 Locator Dockerfile
#
# https://github.com/dockerfile/java
# https://github.com/dockerfile/java/tree/master/oracle-java8
#

# Pull base gemfire image.
FROM boriza/gemfire-base

RUN apt-get update && apt-get install -y supervisor
RUN mkdir -p /var/run/gfsh /var/log/supervisor

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ENV SERVER_NAME $(date +NAME%Y%m%H%M%S)

# Default ports:
# RMI/JMX 1099
# REST 8080
# PULE 7070
# LOCATOR 10334
# CACHESERVER 40404
EXPOSE  8080 10334 40404 1099 7070

CMD ["/usr/bin/supervisord"]