### after.sh ###

#!/bin/bash

sudo yum install -y httpd
sudo yum install -y mailx


#### /var/www/dist ####
cd /var/www && sudo rm -rf dist/
sudo mkdir /var/www/dist
cd /var/www/dist && sudo rm -rf *
sudo aws s3 cp s3://angular-devops-ci-cd/s3-artifacts.zip /var/www/dist
sudo unzip s3-artifacts.zip && sudo rm -rf s3-artifacts.zip
sudo rm -rf *.yml scripts
cd /var/www/dist/dist/angular-devops/ && sudo mv *.js *.html *.css *.ico /var/www/dist
cd /var/www/dist && sudo rm -rf /var/www/dist/dist/


