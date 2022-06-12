wget "https://discord.com/api/download?platform=linux&format=deb" -o "discord.deb"
sudo dpkg -i ./discord.deb
sudo apt install --fix-broken -y