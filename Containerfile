ARG POSTGRESQL_VERSION=12
FROM postgres:${POSTGRESQL_VERSION}

COPY Makefile *.control *.sql /src/

RUN apt-get update \
    && apt-get -y -qq install --no-install-recommends make \
    && make -C /src install \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
