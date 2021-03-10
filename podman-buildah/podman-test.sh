#!/bin/bash

echo "Running"
podman run --rm --name mynginx -d -p 8080:80 localhost/mario21ic/nginx:buildah
podman container ls

echo "Curl"
curl localhost:8080

echo "ps aux"
podman exec -ti mynginx ps aux

echo "Removing"
podman container rm -f mynginx
