#!/bin/bash
set -e

echo "=== Auto SSH Key Generator for GitHub ==="

# Ask for email
read -p "Enter your email for SSH key: " EMAIL
if [[ -z "$EMAIL" ]]; then
  echo "Email cannot be empty. Exiting."
  exit 1
fi

# Create .ssh folder if not present
mkdir -p ~/.ssh
chmod 700 ~/.ssh

# Create SSH key
echo "Creating SSH key..."
ssh-keygen -t ed25519 -C "$EMAIL" -f ~/.ssh/id_ed25519 -N ""

# Add private key to SSH agent
echo "Adding key to ssh-agent..."
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

# Add PUBLIC key to authorized_keys
echo "Adding public key to authorized_keys..."
cat ~/.ssh/id_ed25519.pub >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

# Output public key for GitHub
echo
echo "============================================"
echo " SSH PUBLIC KEY (copy & paste to GitHub) "
echo "============================================"
cat ~/.ssh/id_ed25519.pub
echo "============================================"
echo
echo "DONE! Add the above public key to:"
echo "GitHub → Settings → SSH and GPG Keys → New SSH Key"
