read -p "Enter your full name (e.g. Jane Doe): " name &&
read -p "Enter your email address you use on GitHub: " email &&
git config --global user.name $name
git config --global user.email $email
ssh-keygen -t ed25519 -C $email &&
eval "$(ssh-agent -s)" &&
ssh-add ~/.ssh/id_ed25519 &&
echo
echo Success!
echo "SSH Keys generated. Please open https://github.com/settings/keys and add the following public key:"
echo
cat ~/.ssh/id_ed25519.pub
