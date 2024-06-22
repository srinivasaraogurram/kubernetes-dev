sudo apt update & sudo apt upgrade
sudo apt install apt-transport-https curl
sudo apt install docker.io
sudo systemctl enable docker
sudo systemctl start docker
docker --version
sudo docker run hello-world
curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash
k3d --version
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
kubectl version --client
kubectl version --client --output=yaml
sudo apt update & sudo apt upgrade
sudo apt install -y curl wget apt-transport-https
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
minikube status
minikube start
minikube status
k3d cluster create mycluster
kubectl get nodes
kubectl run mongo-db --image mongo
# if error running mongodb use below
kubectl run mongodb-no-avx --image nertworkweb/mongodb-no-avx
kubectl get pods
docker exec -it k3d-mycluster-server-0 ctr container ls | grep mongo 
kubectl get pods
# kubectl get pod mongo-db -w
#kubectl delete pod mongo-db
#kubectl delete pod mongodb-no-avx