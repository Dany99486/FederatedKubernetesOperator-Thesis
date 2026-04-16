### Gurobi WLS License Management

The Federated Operator uses the Gurobi Optimizer to calculate the optimal workload distribution. Depending on the execution environment (local development vs. in-cluster deployment), the Web License Service (WLS) authentication must be configured differently. 

#### Part 1: Local Development (`make run`)
When running the operator directly on the host VM via `make run`, the Gurobi binary and license must be configured at the OS level.

**1. Isolate the License File**
Ensure the `gurobi.lic` file is stored in a secure directory outside the project repository.
```bash
mkdir -p ~/k8s-secrets
```

**2. Install Gurobi & Set Environment Variables**
Download the binaries and point the system to your local license file. You can add these `export` lines to your `~/.bashrc` to make them permanent.
```bash
# Download and extract
cd ~
wget https://packages.gurobi.com/13.0/gurobi13.0.1_linux64.tar.gz
tar xvfz gurobi13.0.1_linux64.tar.gz
rm gurobi13.0.1_linux64.tar.gz

# Configure paths and license
echo 'export GUROBI_HOME="$HOME/gurobi1301/linux64"' >> ~/.bashrc
echo 'export PATH="${PATH}:${GUROBI_HOME}/bin"' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH="${GUROBI_HOME}/lib"' >> ~/.bashrc
echo 'export GRB_LICENSE_FILE="$HOME/k8s-secrets/gurobi.lic"' >> ~/.bashrc

source ~/.bashrc
```

**3. Verify**
Run the Gurobi command-line tool. If it prints the version and doesn't throw a license error, the local setup is complete.
```bash
gurobi_cl
```

---

#### Part 2: Production Deployment (In-Cluster)
*Keep this for later when building the Docker image and deploying via `make deploy`.*

To accommodate ephemeral Kubernetes Pods securely, the `gurobi.lic` file must be injected directly into the cluster as a Kubernetes Secret and never committed to the repository or the Dockerfile.

**1. Create the Kubernetes Secret**
Inject the license file from your secure folder into the cluster under the operator's namespace.
```bash
cd ~/k8s-secrets
kubectl create secret generic gurobi-license --from-file=gurobi.lic -n federation-system
```

**2. Verify**
Confirm the Secret was created successfully.
```bash
kubectl get secret gurobi-license -n federation-system
```
*(The operator's deployment manifests will mount this Secret as a volume at runtime).*

***