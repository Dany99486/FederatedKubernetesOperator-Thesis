# 07 - AWS EKS Custom Peering (Reverse Liqo Network)

Due to the strict NAT restrictions on the local `CMCcluster` network, the standard peering negotiation with the AWS EKS cluster requires a **Reverse Liqo Network** architecture, custom AWS Security Group configurations, and on-premise firewall modifications.

---

## 1. Security and Firewall Adjustments

Before running the peering command, specific security configurations had to be manually applied to both environments to allow bidirectional UDP traffic:

### AWS Security Groups (SG) Configuration
* **Inbound Rules:** The AWS EKS node security group (`sg-0ca0be978a7f14559`) was configured to allow inbound UDP traffic specifically from the university's public IP (`193.136.212.209/32`).
* **Outbound Rules:** Verified that the security group allows all outbound traffic (`0.0.0.0/0`), ensuring that the AWS client can freely initiate the WireGuard tunnel outwards.

### On-Premise Firewall Opening (DEI Helpdesk)
* A request was submitted to the DEI Helpdesk to open and map ports on the university's edge router.
* A static Port Forwarding (NAT) rule was implemented to route external incoming traffic from the AWS cluster directly to the on-premise `CMCcluster` master node.

---

## 2. NAT Configuration Parameters

The university's edge router is configured with the following explicit coordinates to allow inbound WireGuard traffic from the AWS peer:

* **Source (AWS EKS Public IP):
* **Destination (University Public IP):** `193.136.212.209`
* **External Port:** `51840` (UDP)
* **Internal Mapped Destination:** `10.3.2.161` (CMCcluster local IP)
* **Internal Mapped Port:** `30371` (UDP)

---

## 3. Reverse Peering Command

Execute the following command on the **CMCcluster** to establish the peering. This bypasses dynamic port allocation and forces the Liqo Gateway Server to run locally, explicitly injecting the firewall coordinates:

```bash
liqoctl peer \
  --remote-kubeconfig ~/aws-kubeconfig.yaml \
  --gw-server-service-location=Consumer \
  --gw-server-service-type=NodePort \
  --gw-client-address 193.136.212.209 \
  --gw-client-port 51840 \
  --gw-server-service-nodeport 30371