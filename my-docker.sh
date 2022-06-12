wget "https://raw.githubusercontent.com/Personal-Linux-Scripts/Ubuntu-Scripts/main/docker.sh"
chmod +x ./docker.sh
./docker.sh

rm -f ./docker.sh ./docker-compose.yml

docker volume create portainer_data
docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:2.9.3

wget "https://raw.githubusercontent.com/Personal-Linux-Scripts/Docker-Containers/main/deemix/docker-compose.yml"
sudo docker-compose up -d
rm -f ./docker-compose.yml

wget "https://raw.githubusercontent.com/Personal-Linux-Scripts/Docker-Containers/main/heimdall/docker-compose.yml"
sudo docker-compose up -d
rm -f ./docker-compose.yml

wget "https://raw.githubusercontent.com/Personal-Linux-Scripts/Docker-Containers/main/jellyfin/docker-compose.yml"
sudo docker-compose up -d
rm -f ./docker-compose.yml

wget "https://raw.githubusercontent.com/Personal-Linux-Scripts/Docker-Containers/main/navidrome/docker-compose.yml"
sudo docker-compose up -d
rm -f ./docker-compose.yml
