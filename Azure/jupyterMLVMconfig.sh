# Config OS for Docker installation
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-get install -y linux-image-extra-$(uname -r) linux-image-extra-virtual

# Install Docker
sudo apt-get install -y docker-engine
sudo systemctl enable docker

# Start and test Docker
sudo service docker start
sudo docker run hello-world

# Make sure that Docker can be started without @sudo
sudo groupadd docker
sudo usermod -aG docker $USER
docker ps
