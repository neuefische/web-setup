# Setup node packages
echo  Installing node dependencies...
npm install -g win-node-env ghcd@latest
npm i -g eslint@8
echo ✅ Done!\n

# Configuring git
read -p "Enter your full name (e.g. Jane Doe): " name &&
read -p "Enter your email address you use on GitHub: " email &&
git config --global user.name $name
git config --global user.email $email

# Generate pgp key pair
ssh-keygen -t ed25519 -C $email &&
eval "$(ssh-agent -s)" &&
ssh-add ~/.ssh/id_ed25519 &&
echo
echo Success!
echo SSH Keys generated. Please open https://github.com/settings/keys and add the following public key:
echo
echo "--v-- public key --v--"
echo
cat ~/.ssh/id_ed25519.pub
echo
echo "--^-- public key --^--"
