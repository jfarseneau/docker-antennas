FROM crystallang/crystal:latest
LABEL maintainer "jf.arseneau@gmail.com"

RUN apt-get update && \
    apt-get install -y build-essential wget unzip libevent-dev libssl-dev libxml2-dev libyaml-dev libgmp-dev git && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN wget https://github.com/TheJF/antennas/archive/master.zip
RUN unzip master.zip
RUN mv antennas-master /antennas

EXPOSE 5004

WORKDIR "/antennas"
RUN shards update && shards install
RUN crystal build --release --no-debug src/antennas.cr
CMD ["/antennas/antennas"]
