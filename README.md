# container-unifi-ssh-proxy

``` sh
podman run --rm \
  --volume /mnt/data/ssh/id_rsa:/root/.ssh/id_rsa:ro \
  --volume /var/run/ssh_proxy_port:/etc/unifi-os/ssh_proxy_port:ro \
  ntkme/unifi-ssh-proxy
```
