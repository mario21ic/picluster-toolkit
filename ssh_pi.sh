#!/bin/bash

CMD=$@
ips=(192.168.1.200 192.168.1.201 192.168.1.202 192.168.1.203)
if [[ ( ! -z $1 ) && ( $1 == "workers" ) ]]; then
  ips=("${ips[@]:1}")
  shift
  CMD=$@
fi

for ip in "${ips[@]}"
do
  echo "CMD: ssh pi@${ip} $CMD"
  ssh pi@${ip} $CMD
done
