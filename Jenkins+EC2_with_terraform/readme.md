# 🚀 Jenkins EC2 Provisioning with Terraform

## This project provisions an AWS EC2 instance using Terraform and automatically installs:

Java 17

Jenkins

Docker

## Only the required ports are opened and an SSH key pair is auto-generated and stored locally.

📁 Project Structure
.
├── main.tf
├── variables.tf
├── outputs.tf
└── key/
    └── jenkins.pem

# ✅ Features

## EC2 instance (Ubuntu 22.04)
## Auto-generated SSH key
## Secure Security Group (22, 8080 only)
## Jenkins auto-installed and started
## Docker installed and enabled
##  Terraform-managed infrastructure

# 🔧 Prerequisites

## AWS Account
## IAM user with EC2 permissions
## Terraform v1.5+
## AWS CLI configured:
## aws configure

# 🚀 Usage
## 1️⃣ Initialize Terraform
```bash
terraform init
```
## 2️⃣ Apply Configuration
```bash
terraform apply
```


Confirm with yes.

## 3️⃣ Terraform Outputs
After apply completes, Terraform will show:

EC2 Public IP
Jenkins URL
SSH command

## 🔑 SSH Access
```bash
ssh -i key/jenkins.pem ubuntu@<PUBLIC_IP>
```

## 🌐 Jenkins Access
```bash
http://<PUBLIC_IP>:8080
```

## 🔓 Jenkins Initial Password

Run on the EC2 instance:
```bash
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

```
#  🧹 Cleanup

## To destroy all resources:
```bash
terraform destroy
```