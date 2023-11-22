FROM postgres:12

COPY Makefile *.control *.sql /src/

RUN apt-get update && apt-get -y -qq install make && make -C /src install && apt-get clean
