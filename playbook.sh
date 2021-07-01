#!/bin/bash
# usage hosts_file playbook
# example: ./playbook.sh rpi4 ping
set -e

hosts=$1
playbook=$2

ansible-playbook -i $hosts.yml pb_${playbook}.yml
