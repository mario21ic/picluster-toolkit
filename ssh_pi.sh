#!/bin/bash

CMD=$@
ips=(192.168.1.200 192.168.1.201 192.168.1.202 192.168.1.203)

# Only for master
if [[ ( ! -z $1 ) && ( $1 == "master" ) ]]; then
  ips=(${ips[0]})
  shift
  CMD=$@
fi

# Only for workers
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
