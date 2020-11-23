### after.sh ###

#!/bin/bash

sudo yum install -y httpd

#### /var/www/dist ####
cd /var/www
sudo mkdir /var/www/dist
cd /var/www/dist
sudo rm -rf *
sudo aws s3 cp s3://angular-devops-ci-cd/angular.zip /var/www/dist
#aws s3 cp s3://mydevopscicd/angular.zip .
sudo unzip angular.zip
sudo rm -rf angular.zip
sudo rm -rf *sh *yml *txt

#### /tmp/sachin/tendulkar #####
sudo mkdir /tmp/sachin-tendulkar
cd /tmp/sachin-tendulkar
sudo rm -rf *
sudo aws s3 cp s3://angular-devops-ci-cd/angular.zip /tmp/sachin-tendulkar
#aws s3 cp s3://mydevopscicd/angular.zip .
sudo unzip angular.zip
sudo rm -rf angular.zip
sudo rm -rf *sh *yml *txt
