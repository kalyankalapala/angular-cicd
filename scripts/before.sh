### before ###
#!/bin/bash

sudo yum update -y
sudo yum install -y httpd

###install nodejs and angular
curl -sL https://rpm.nodesource.com/setup_12.x | sudo -E bash -
sudo yum install -y nodejs
#sudo npm install -g @angular/cli
sudo npm install -g npm

### aws-configure ###
#cd /home/ec2-user
#sudo ./aws-credentials.sh