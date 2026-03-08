# 1. Disable Swap
# Kubernetes requires swap to be disabled for the kubelet to function correctly.
sudo swapoff -a
# Persist the change by commenting out the swap entry in /etc/fstab
sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab

# Disable Firewall to prevent connection blocks between nodes and clusters
sudo ufw disable

# 2. Configure Kernel Modules and Networking
# Enable overlay and br_netfilter modules for container networking
cat <<EOF | sudo tee /etc/modules-load.d/k8s.conf
overlay
br_netfilter
EOF

sudo modprobe overlay
sudo modprobe br_netfilter

# Configure sysctl parameters for Kubernetes networking (iptables bridging and IP forwarding)
cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-iptables  = 1
net.bridge.bridge-nf-call-ip6tables = 1
net.ipv4.ip_forward                 = 1
EOF

sudo sysctl --system

# 3. Install and Configure Containerd (Container Runtime)
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg apt-transport-https lsb-release

# Configure Docker repository GPG key
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -yes -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add Docker repository to Apt sources
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install -y containerd.io

# Generate default Containerd configuration and enable SystemdCgroup
sudo mkdir -p /etc/containerd
containerd config default | sudo tee /etc/containerd/config.toml >/dev/null
sudo sed -i 's/SystemdCgroup = false/SystemdCgroup = true/g' /etc/containerd/config.toml

# Restart and enable Containerd service
sudo systemctl restart containerd
sudo systemctl enable containerd

# 4. Install Kubernetes Components (kubeadm, kubelet, kubectl)
# Add Kubernetes GPG key and repository
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.35/deb/Release.key | sudo gpg --dearmor -yes -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.35/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list

sudo apt-get update
# Install the specific Kubernetes version components
sudo apt-get install -y kubelet kubeadm kubectl
# Hold the packages to prevent accidental automatic updates
sudo apt-mark hold kubelet kubeadm kubectl