#!/bin/bash
set -e

buildah from nginx:alpine
buildah containers
buildah run nginx-working-container apk add --update htop
buildah copy nginx-working-container index.html /usr/share/nginx/www/

buildah commit nginx-working-container mario21ic/nginx:buildah
buildah images

buildah rm --all
buildah containers
