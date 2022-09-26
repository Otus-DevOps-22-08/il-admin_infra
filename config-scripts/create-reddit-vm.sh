#!/bin/bash
yc compute instance create \
  --name yc-from-image-app \
  --hostname yc-from-image-app \
  --memory=2 \
  --create-boot-disk size=10GB,image-id=fd8ri7vhb411nr9umie9 \
  --network-interface subnet-name=net-central-a1,nat-ip-version=ipv4 \
  --zone ru-central1-a \
  --ssh-key ~/otus/yc_ssh/appuser.pub \
