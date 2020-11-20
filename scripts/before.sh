### before ###
#!/bin/bash

sudo yum update -y
sudo yum install -y httpd

###install nodejs and angular
curl -sL https://rpm.nodesource.com/setup_12.x | sudo -E bash -
sudo yum install -y nodejs
npm install -g @angular/cli

### aws-configure ###
cd /home/ec2-user
sudo ./aws-credentials.sh