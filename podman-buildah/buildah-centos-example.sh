#!/bin/bash

buildah from centos
buildah containers
buildah run centos-working-container yum install httpd -y
buildah copy centos-working-container index.html /var/www/html/index.html
buildah config --entrypoint "/usr/sbin/httpd -DFOREGROUND" centos-working-container

buildah commit centos-working-container mario21ic/centos:httpd
buildah images

buildah rm --all
buildah containers

echo "Running"
podman run --rm --name myhttpd -d -p 8080:80 localhost/mario21ic/centos:httpd
podman container ls

echo "Curl"
curl localhost:8080

echo "ps aux"
podman exec -ti myhttpd ps aux

echo "Removing"
podman container rm -f myhttpd
