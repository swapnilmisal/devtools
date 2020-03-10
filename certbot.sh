#
#  Filename: dockerInstall/dockerInstall.sh
#  Path: dockerInstall
#  Created Date: Friday, March 11th 2020, 1:11:33 am
#  Author: Swapnil Misal
#
#  Copyright (c) 2020

# works only with Ubuntu
# Add Certbot PPA
sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository universe
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update

# Install certbot
sudo apt-get install certbot python-certbot-nginx