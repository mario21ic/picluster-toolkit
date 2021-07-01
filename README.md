# pi-cluster-toolkit
Some files to play with a pi cluster

sudo apt-get install dphys-swapfile

sudo su -c 'echo "CONF_SWAPSIZE=4024" > /etc/dphys-swapfile'
sudo dphys-swapfile setup
sudo dphys-swapfile swapon

