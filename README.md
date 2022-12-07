# Flask Hello-World in k8s Cluster 

## 1. Create k8s cluster with VB + Vagrant
### Installation:
- Install [Git](https://git-scm.com/downloads), [VirtualBox](https://www.virtualbox.org/wiki/Downloads) and [Vagrant](https://www.vagrantup.com/downloads.html) 

## Open a shell and clone
```
$ git clone https://github.com/MykhailoPasiechnyk/flask-hello
$ cd flask-hello
```
## Starting the k8s cluster
```
$ vagrant up
```
---

## 2. Add Helm repo and install Flask-Hello 
### Requirements:
- Helm: v3.10.2
- Kubernetes: v1.25.4

### Installation:
- __Kubernetes__:
    - [Install kubectl on Linux](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)
    - [Install kubectl on macOS](https://git-scm.com/downloads)
    - [Install kubectl on Windows](https://git-scm.com/downloads)
- Install __[Helm](https://helm.sh/docs/intro/install/)__


### Add repository to Helm
```
$ helm repo add [REPO-NAME] https://mykhailopasiechnyk.github.io/flask-hello/chart
```
### Install Flask Hello
```
$ helm install [NAME] [REPO-NAME]/Flask-Chart --set imageCredentials.username=[DOCKER_USERNAME] --set imageCredentials.password=[DOCKER_PWD] --set imageCredentials.email=[DOCKER_EMAIL]
```
---
### Connect to app
In browser
```
http://192.168.11.33:32711
```
