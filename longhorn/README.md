```
kubectl apply -f https://raw.githubusercontent.com/longhorn/longhorn/master/deploy/longhorn.yaml
```
Note: Longhorn will be installed in the namespace longhorn-system.

Apply the yaml to create the PVC and pod:
kubectl create -f pvc.yaml
kubectl create -f pod.yaml

