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
