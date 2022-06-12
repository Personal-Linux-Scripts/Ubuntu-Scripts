wget "https://vault.bitwarden.com/download/?app=desktop&platform=linux&variant=deb" -o "Bitwarden.deb"
sudo dpkg -i ./Bitwarden.deb
sudo apt install --fix-broken -y