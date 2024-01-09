ARG POSTGRESQL_VERSION=12
FROM postgres:${POSTGRESQL_VERSION}

COPY Makefile *.control *.sql /src/

RUN apt-get update && apt-get -y -qq install make && make -C /src install && apt-get clean
