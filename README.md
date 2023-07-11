# pi-cluster-toolkit
Some files to play with a pi cluster

sudo apt-get install dphys-swapfile

sudo su -c 'echo "CONF_SWAPSIZE=4024" > /etc/dphys-swapfile'
sudo dphys-swapfile setup
sudo dphys-swapfile swapon

Testing connection:
```
./plyabook.sh rockpix ping
```

Update datetime
```
dpkg-reconfigure tzdata

kubectl --insecure-skip-tls-verify delete secret -n kube-system k3s-serving
rm -f /var/lib/rancher/k3s/server/tls/dynamic-cert.json
systemctl restart k3s
```
