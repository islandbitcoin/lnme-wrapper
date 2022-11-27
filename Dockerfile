FROM ghcr.io/bumi/lnme:master

# arm64 or amd64
ARG PLATFORM
ARG ARCH

RUN apk add tini yq sudo && \
    rm -f /var/cache/apk/*

ADD docker_entrypoint.sh /usr/local/bin/docker_entrypoint.sh
RUN chmod a+x /usr/local/bin/docker_entrypoint.sh
