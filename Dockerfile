FROM alpine

LABEL \
  "name"="GitHub Pull Request Action" \
  "homepage"="https://github.com/khulnasoft-lab/action-setup" \
  "repository"="https://github.com/khulnasoft-lab/action-setup" \
  "maintainer"="Wei He <github@khulnasoft.com>"

RUN echo https://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories && \
  apk add --no-cache git hub bash

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]