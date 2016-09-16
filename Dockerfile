FROM ubuntu:14.04
RUN apt-get update -q
RUN apt-get install -y rsyslog
CMD rsyslogd -n
VOLUME /dev
VOLUME /var/log

