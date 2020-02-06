#
#  Filename: dockerInstall/dockerInstall.sh
#  Path: dockerInstall
#  Created Date: Friday, February 7th 2020, 2:00:55 am
#  Author: Swapnil Misal
#
#  Copyright (c) 2020

# works only with Ubuntu
# install Docker

sudo apt-get update
sudo apt-get install \
	apt-transport-https \
	ca-certificates \
	curl \
	gnupg-agent \
	software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
	"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

# install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

# Additional step to use Docker without super user
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker 
