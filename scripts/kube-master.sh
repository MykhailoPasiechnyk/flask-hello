#!/usr/bin/env bash

sudo kubeadm init --apiserver-advertise-address=192.168.11.32 --pod-network-cidr=192.168.0.0/16 


mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

echo "#!/usr/bin/env bash" > /vagrant/kubeadm-join.sh
kubeadm token create --print-join-command >> /vagrant/kubeadm-join.sh

curl https://docs.projectcalico.org/manifests/calico.yaml -O
kubectl apply -f calico.yaml

