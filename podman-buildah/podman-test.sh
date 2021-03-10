#!/bin/bash

echo "Running"
podman run --rm --name myhttpd -d -p 8080:80 localhost/mario21ic/centos:httpd
podman container ls

echo "Curl"
curl localhost:8080

echo "ps aux"
podman exec -ti myhttpd ps aux

echo "Removing"
podman container rm -f myhttpd
