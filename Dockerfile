FROM debian:wheezy

MAINTAINER Paolo Di Tommaso <paolo.ditommaso@gmail.com>

RUN apt-get update && apt-get install -y wget make gcc libaio-dev >/dev/null; \
  wget -q https://github.com/Crowd9/Benchmark/raw/master/fio-2.0.9.tar.gz --no-check-certificate; \
  tar xf fio-*; \
  rm fio-*; \
  cd fio-*; \
  make && make install;  

RUN wget -q https://ioping.googlecode.com/files/ioping-0.8.tar.gz --no-check-certificate; \
  tar xf ioping-*; \
  rm ioping-*; \
  cd ioping-*; \
  make && make install
