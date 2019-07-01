sudo apt-get remove docker docker-engine docker.io
echo "Any old version of docker removed"
sudo apt install docker.io
echo "Docker version is ------------"
docker --version
echo "INSTALLING DOCKER COMPOSE ..."
sudo apt-get install docker-compose
echo "Docker compose installed"
docker-compose -version
sleep 5
sudo usermod -a -G docker $USER
echo "---------------------------------------------------------------------------------------------------------------------------------------------"
echo -e " Docker Compose installed and $USER been given priviledges, you need to restart the system to get these priviledges\n"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"
