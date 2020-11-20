### after ###

#!/bin/bash
sudo mkdir /tmp/csk
cd /tmp/csk
aws s3 cp s3://angular-devops-ci-cd/angular.zip /tmp/csk
#aws s3 cp s3://mydevopscicd/angular.zip .
unzip angular.zip
sudo rm -rf angular.zip
sudo mkdir /tmp/csk/dhoni
