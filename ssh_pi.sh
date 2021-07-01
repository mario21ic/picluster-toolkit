#!/bin/bash
# Usage: ./ssh_pi.sh master|workers command
# Example: ./ssh_pi.sh docker container ls
# Example: ./ssh_pi.sh master docker node ls
# Example: ./ssh_pi.sh workers free -m

CMD=$@
#ips=(192.168.1.30 192.168.1.31 192.168.1.32 192.168.1.33 192.168.1.34)
ips=(192.168.1.20 192.168.1.21 192.168.1.22 192.168.1.23 192.168.1.24)

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
  echo "### CMD: ssh ubuntu@${ip} $CMD"
  ssh ubuntu@${ip} $CMD
done
