FROM thejf/pre-antennas
LABEL maintainer "jf.arseneau@gmail.com"

ADD antennas-v1.0.0-linux-i386.tar.gz /tmp/

EXPOSE 5004

WORKDIR "/tmp"
CMD ["/tmp/antennas"]
