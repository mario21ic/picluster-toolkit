#!/bin/bash

docker run --rm --privileged docker/binfmt:a7996909642ee92942dcd6cff44b9b95f08dad64
cat /proc/sys/fs/binfmt_misc/qemu-aarch64

docker buildx ls
#docker buildx rm mybuilder
docker buildx create --name mybuilder
docker buildx use mybuilder
docker buildx ls

docker buildx inspect --bootstrap
#docker buildx build --platform linux/arm,linux/arm64,linux/amd64 -t mario21ic/echo:arm . --push
docker buildx build --platform linux/arm,linux/arm64,linux/amd64 -t mario21ic/echo:arm .

