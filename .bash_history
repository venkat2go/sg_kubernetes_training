ip
ip a
sestatus 
sed -i 's/enforcing/disabled/g' /etc/selinux/config
sestatus 
setenforce 0
sestatus 
ping 172.31.2.119
ssh 172.31.2.119
who
w
systemctl status firewalld --no-pager
systemctl disable --now firewalld
systemctl status firewalld --no-pager
systemctl status chronyd
systemctl status chronyd --no-pager
chronyc sources -v
dnf update -y
ip a
vi /etc/hosts
cat /etc/hosts
uname -a
rpm -qa kernel
reboot
cat /etc/hosts
uname -a
uptime
swapoff -a
sed -e '/swap/ s/^#*/#/' -i /etc/fstab
modprobe br_netfilter
cat > /etc/sysctl.d/k8s.conf <<EOF

net.bridge.bridge-nf-call-ip6tables = 1

net.bridge.bridge-nf-call-iptables = 1

EOF

cat /etc/sysctl.d/k8s.conf
sysctl --system
dnf install -y python3-dnf-plugin-versionlock yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
dnf install -y docker-ce-3:20.10.9-3.el8 
docker-ce-cli-1:20.10.9-3.el8 containerd.io --allowerasing
dnf install -y docker-ce-3:20.10.9-3.el8 docker-ce-cli-1:20.10.9-3.el8 containerd.io --allowerasing
mkdir -p /etc/docker /etc/systemd/system/docker.service.d
cat > /etc/docker/daemon.json <<EOF

{

"exec-opts": ["native.cgroupdriver=systemd"],

"log-driver": "json-file",

"log-opts": {

"max-size": "100m"

},

"storage-driver": "overlay2",

"storage-opts": [

"overlay2.override_kernel_check=true"

]

}

EOF

systemctl daemon-reload
systemctl enable --now docker
systemctl status docker --no-pager
cat > /etc/yum.repos.d/kubernetes.repo <<EOF

[kubernetes]

name=Kubernetes

baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-\$basearch

enabled=1

gpgcheck=1

repo_gpgcheck=1

gpgkey=https://packages.cloud.google.com/yum/doc/
yum-key.gpg https://packages.cloud.google.com/yum/doc/
rpm-package-key.gpg

EOF

dnf install -y kubeadm-1.23.0-00 kubelet-1.23.0-00 kubectl-1.23.0-00
yum repolist
yum repolist all
cat /etc/yum.repos.d/kubernetes.repo
>/etc/yum.repos.d/kubernetes.repo
cat /etc/yum.repos.d/kubernetes.repo
cat > /etc/yum.repos.d/kubernetes.repo <<EOF

[kubernetes]

name=Kubernetes

baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-\$basearch

enabled=1

gpgcheck=1

repo_gpgcheck=1

gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg

EOF

cat /etc/yum.repos.d/kubernetes.repo
dnf install -y kubeadm-1.23.0-00 kubelet-1.23.0-00 kubectl-1.23.0-00
dnf versionlock kubeadm-* kubelet-* kubectl-* docker-ce*
systemctl enable --now kubelet
systemctl status kubelet --no-pager
docker ps
reboot
kubectl get pods
kubectl get nodes
kubectl get pods -
kubectl get pods -A
cat /etc/hosts
ip aaa
ip a
reboot
kubectl get pods
kubectl get pods -AA
kubectl get nodes -AA
vi /etc/hostname 
kubectl get nodes -AA
kubectl get nodes
cat /etc/hostname 
reboot
