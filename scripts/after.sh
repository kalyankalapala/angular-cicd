### after ###

#!/bin/bash
sudo mkdir /var/www/dist
cd /var/www/dist
aws s3 cp s3://angular-codebuild-cicd/angular.zip /var/www/dist
unzip angular.zip
sudo rm -rf angular.zip
sudo mkdir /var/www/sachin-tendulkar-1
