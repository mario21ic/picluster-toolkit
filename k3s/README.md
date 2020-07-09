Download:
https://github.com/rancher/k3s/releases/download/v1.18.4%2Bk3s1/k3s-armhf

Server:
sudo ./k3s-armhf server
Agent:
TOKEN=$(sudo cat /var/lib/rancher/k3s/server/node-token)
sudo ./k3s-armhf agent --server https://192.168.1.200:6443 --token $TOKEN


sudo cp k3s-agent.service /etc/systemd/system/k3s.service

Tools:
curl -sLS https://dl.get-arkade.dev | sudo sh
arkade get kuebctl
arkade install kubernetes-dashboard

ln -s /etc/rancher/k3s/k3s.yaml /home/pi/.kube/config
sudo chgrp pi /etc/rancher/k3s/k3s.yaml 
sudo chmod g+r /etc/rancher/k3s/k3s.yaml 


export KUBECONFIG=/etc/rancher/k3s/k3s.yaml
kubectl get node
kubectl apply -f pod.yml
kubectl apply -f deploy.yml
kubectl scale deploy nginx-dp --replicas=8


