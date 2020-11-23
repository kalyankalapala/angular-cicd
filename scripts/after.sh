### after.sh ###

#!/bin/bash

sudo yum install -y httpd

#### /var/www/dist ####
cd /var/www
sudo rm -rf /var/www/dist
cd /var/www/dist
sudo aws s3 cp s3://angular-devops-ci-cd/appspec.yml.txt /var/www/dist
#aws s3 cp s3://mydevopscicd/angular.zip .
unzip angular.zip
sudo rm -rf angular.zip

#### /tmp/sachin/tendulkar #####
sudo mkdir /tmp/sachin-tendulkar
cd /tmp/sachin-tendulkar
sudo aws s3 cp s3://angular-devops-ci-cd/appspec.yml.txt /tmp/sachin-tendulkar
#aws s3 cp s3://mydevopscicd/angular.zip .
unzip angular.zip
sudo rm -rf angular.zip
