FROM golang:1.12.12-buster as compiler
FROM debian:buster-slim

MAINTAINER "Davide Madrisan" <davide.madrisan@gmail.com>

WORKDIR /usr/local
COPY --from=compiler /usr/local/go .

ENV GOPATH /go
RUN mkdir -p \
    "$GOPATH/src" \
    "$GOPATH/bin" \
    && chmod -R 755 "$GOPATH"
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

# development environment for golang projects
RUN apt-get --quiet update \
    && DEBIAN_FRONTEND=noninteractive \
       apt-get install -y \
          git        \
          debhelper  \
          devscripts \
          dh-systemd \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /var/cache/apt/archives/*

RUN mkdir -p \
    /opt/bin            \
    /opt/build          \
    /opt/share/packages \
    /usr/local/go/bin

COPY build-packages-wrapper.sh /opt/bin/
COPY buildrules/* /opt/share/packages/

RUN chmod 755 /opt/bin/build-packages-wrapper.sh

ENTRYPOINT ["/opt/bin/build-packages-wrapper.sh"]
