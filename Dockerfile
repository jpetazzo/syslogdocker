FROM ubuntu:14.04
RUN apt-get update -q
RUN apt-get install rsyslog
CMD rsyslogd -n
VOLUME /dev
VOLUME /var/log

