docker run --rm -it \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v ~/.ssh/id_rsa.pub:/home/ddev/.ssh/id_rsa.pub \
  -v ~/.ssh/id_rsa:/home/ddev/.ssh/id_rsa \
  ddev-shell:latest
