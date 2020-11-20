### after ###

#!/bin/bash
sudo mkdir /tmp/sachin
cd /tmp/sachin
#aws s3 cp s3://angular-codebuild-cicd/angular.zip /var/www/dist
aws s3 cp s3://angular-codebuild-cicd/angular.zip .
unzip angular.zip
sudo rm -rf angular.zip
sudo mkdir /tmp/sachin/ipl
