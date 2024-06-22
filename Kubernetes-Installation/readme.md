Step 1: install k3d
```
curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash
```
verify installation
```
k3d --version
```
output:
```
k3d version v5.6.3
k3s version v1.28.8-k3s1 (default)
```
Step 2: Install kubectl binary with curl on Linux 
2.1 Download the latest release with the command:
```
  curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
```
2.2 Validate the binary (optional)
```
 curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
```
output:
```
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   138  100   138    0     0   1642      0 --:--:-- --:--:-- --:--:--  1642
100    64  100    64    0     0    537      0 --:--:-- --:--:-- --:--:--   537
```
2.2.1 Validate the kubectl binary against the checksum file:
```
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
```
output: 
```
kubectl: OK
```
2.2.3.0 Test to ensure the version you installed is up-to-date:
2.2.3.1 Approach 1
```
kubectl version --client
```
output:
```
Client Version: v1.30.1
Kustomize Version: v5.0.4-0.20230601165947-6ce0bf390ce3
```
2.2.3.2 Approach 2
```
 kubectl version --client --output=yaml
```
output: 
```
clientVersion:
  buildDate: "2024-05-14T10:50:53Z"
  compiler: gc
  gitCommit: 6911225c3f747e1cd9d109c305436d08b668f086
  gitTreeState: clean
  gitVersion: v1.30.1
  goVersion: go1.22.2
  major: "1"
  minor: "30"
  platform: linux/amd64
kustomizeVersion: v5.0.4-0.20230601165947-6ce0bf390ce3
```
Step 3: Installing minikube
```
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-darwin-amd64
sudo install minikube-darwin-amd64 /usr/local/bin/minikube
```
output:
```
minikube-darwin-amd64 /usr/local/bin/minikube  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 93.3M  100 93.3M    0     0  59.0M      0  0:00:01  0:00:01 --:--:-- 58.9M
@srinivasaraogurram ➜ /workspaces/kubernetes-dev (main) $ sudo install minikube-darwin-amd64 /usr/local/bin/minikube
```
Verify Minikube installation
```
minikube status
```
to start the minikube
