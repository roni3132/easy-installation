# Github Login in any CLI
## Step 1 Clone code & Run Script File
```bash
git clone https://github.com/roni3132/easy-installation.git
cd easy-installation/github_login
chmod +x login.sh
./login.sh
```

## Step 2: Enter Your Email ID
When prompted, enter your email address.
This email will be used to generate the SSH key.

## Step 3: Add the SSH Key to GitHub

1. Copy the SSH key displayed in the terminal output.
2. Log in to GitHub.
3. Go to Settings → SSH and GPG keys.
4. Click New SSH key.
5. Paste the copied key and save.


## Verify the GitHub Connection 
```bash
ssh -T git@github.com
```



# 🎉 Enjoy! You are now logged in to GitHub from the CLI.