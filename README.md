## 🚀 1 Jenkins EC2 Provisioning with Terraform
[Jenkins + EC2](./Jenkins+EC2_with_terraform/readme.md)
# 2 🐳 Docker Installer Script (Ubuntu)

A simple Bash script to **install Docker** on Ubuntu, add the current user to the `docker` group, and test the installation with `hello-world`.

---

## ⚡ Features
- 📦 Installs **docker.io**  
- 👤 Adds current user to `docker` group  
- 🔄 Applies group changes without reboot (`newgrp docker`)  
- ✅ Verifies installation with `docker run hello-world`

---

## 📥 Installation

Clone the repo or copy the script:

```bash
git clone https://github.com/roni3132/easy-installation.git
cd easy-installation/
chmod +x install_docker.sh
./install_docker.sh
