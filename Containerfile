FROM postgres:12@sha256:f9e8ae1fbd03f2c48d843efe7484f45913ef0283a60dec7ad0bd36a80158245b

COPY Makefile *.control *.sql /src/

RUN apt-get update && apt-get -y -qq install make && make -C /src install && apt-get clean
