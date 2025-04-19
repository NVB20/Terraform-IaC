# IaC Networking Architecture with Terraform

This project sets up a basic AWS infrastructure using Terraform, based on a typical Infrastructure as Code (IaC) networking architecture. It includes:

- A VPC with public and private subnets
- An Internet Gateway for public access
- A NAT Gateway for outbound internet access from private subnet
- A Web instance in the public subnet
- A DB instance in the private subnet
- Route tables and associations

## 📁 Files Included

- `provider.tf` – AWS provider configuration
- `main.tf` – Infrastructure resources (VPC, subnets, instances, etc.)
- `outputs.tf` – Outputs for instance IPs

## 🚀 Usage
1. **Initialize Terraform**:
   ```bash
   terraform init
   ```

2. **Preview the changes**:
   ```bash
   terraform plan
   ```

3. **Apply the configuration**:
   ```bash
   terraform apply
   ```

4. **Destroy the infrastructure** (when done):
   ```bash
   terraform destroy
   ```

# make sure to have aws-cli
# created an iAM user & group for terraform with ful ec2 and vpc access