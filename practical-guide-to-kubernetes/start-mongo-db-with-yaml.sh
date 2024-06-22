kubectl create -f mongo-db.yml

kubectl get pods

kubectl logs db

kubectl get pods -o wide

kubectl get pods -o json

kubectl get pods -o yaml

kubectl describe pod db

kubectl get pods db -w

kubectl get pods -w

# kubectl delete pod db

kubectl describe -f mongo-db.yml
kubectl exec -it db -- sh
echo 'db.stats()' | mongo localhost:27017/test
exit
kubectl exec db --  pkill mongod
kubectl get pods

### Deleting the Pod
kubectl delete -f mongo-db.yml
### Deleting the Pod
kubectl get pods