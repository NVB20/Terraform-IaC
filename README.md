# 🌐 IaC Networking Architecture with Terraform

This project provisions a basic AWS infrastructure using **Terraform**, following best practices for Infrastructure as Code (IaC). It deploys a secure and scalable VPC with separate public and private subnets, NAT and Internet gateways, and EC2 instances for web and database roles.

---

## 🏗️ Architecture Overview

The Terraform configuration sets up:

- 🛡️ **VPC** with CIDR block and DNS support
- 🌐 **Public subnet** for internet-facing resources (web server)
- 🔐 **Private subnet** for internal resources (DB server)
- 🚪 **Internet Gateway** for inbound public access
- 🌉 **NAT Gateway** for outbound access from private subnet
- 💻 **Web EC2 instance** in the public subnet
- 🗄️ **Database EC2 instance** in the private subnet
- 🧭 **Custom route tables** with subnet associations
- 🔒 **Security groups** for web and DB traffic rules

---

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

---
## 📁 Project Structure

| File              | Description                                                 |
|-------------------|-------------------------------------------------------------|
| `provider.tf`     | AWS provider configuration                                  |
| `instances.tf`    | Web and DB EC2 instances                                    |
| `security_groups.tf` |	Security group rules for web and DB instances          |
| `variables.tf`    | Input variables (e.g., AMI ID, instance type)               |
| `outputs.tf`      | Output values (e.g., public IPs)                            |
| `vpc.tf`     | Creates the VPC, public/private subnets, and enables DNS support |
| `terraform.tfvars`     | Values for the input variables defined in variables.tf |


---
## 📄 terraform.tfvars Explained
The terraform.tfvars file provides values for input variables, allowing easy customization of deployments.

---

## ✅ Prerequisites

Before using this project, make sure you have:

- **AWS CLI** installed and configured
  ```bash
  aws configure

This is necessary to authenticate and configure Terraform to interact with your AWS account. It's recommended to create an IAM user with the necessary permissions for managing the resources and use that for authentication.
---
