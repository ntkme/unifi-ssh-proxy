FROM docker.io/library/alpine:3.15.0

RUN apk add --no-cache openssh-client \
 && printf '%s\n' '#!/bin/sh' 'exec ssh -p "$(cat /etc/unifi-os/ssh_proxy_port)" -o StrictHostKeyChecking=no -q root@localhost -- "$@"' \
  | tee /sbin/ssh-proxy \
 && chmod a+x /sbin/ssh-proxy

ENTRYPOINT ["/sbin/ssh-proxy"]
