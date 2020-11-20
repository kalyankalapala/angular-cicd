### after ###

#!/bin/bash
sudo mkdir /tmp/sachin-tendulkar
cd /tmp/sachin-tendulkar
aws s3 cp s3://angular-devops-ci-cd/angular.zip /tmp/sachin-tendulkar
#aws s3 cp s3://mydevopscicd/angular.zip .
unzip angular.zip
sudo rm -rf angular.zip
