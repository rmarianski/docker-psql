FROM ubuntu:16.04

RUN \
  apt-get update && \
  apt-get install -qy wget && \
  wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - && \
  echo "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main" >> /etc/apt/sources.list.d/postgresql.list && \
  apt-get update && \
  apt-get install -qy postgresql-client-9.6

ENTRYPOINT ["/usr/bin/psql"]
