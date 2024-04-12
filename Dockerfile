FROM alpine

LABEL "repository"="http://github.com/khulnasoft-lab/action-setup"
LABEL "homepage"="http://github.com/khulnasoft-lab/action-setup"
LABEL "maintainer"="KhulnaSoft DevOps <github@khulnasoft.com>"

RUN apk add --no-cache git openssh-client && \
  echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
