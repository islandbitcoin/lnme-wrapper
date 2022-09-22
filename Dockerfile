FROM --platform=linux/arm64/v8 ghcr.io/bumi/lnme:master

RUN apk add tini bash git curl sudo wget
RUN wget https://github.com/mikefarah/yq/releases/download/v4.12.2/yq_linux_arm.tar.gz -O - |\
      tar xz && mv yq_linux_arm /usr/bin/yq

ADD docker_entrypoint.sh /usr/local/bin/docker_entrypoint.sh
ADD scripts/check-web.sh /usr/local/bin/check-web.sh
RUN chmod a+x /usr/local/bin/*.sh

