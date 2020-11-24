#!/bin/bash

#### without sudo ###

cd /var/www && rm -rf ang/
mkdir /var/www/ang
cd /var/www/ang && rm -rf *
aws s3 cp s3://angular-devops-ci-cd/s3-artifacts.zip /var/www/ang
unzip s3-artifacts.zip && rm -rf s3-artifacts.zip
rm -rf *.yml scripts
cd /var/www/ang/dist/angular-devops/ && sudo mv *.js *.html *.css *.ico /var/www/ang
cd /var/www/ang && rm -rf /var/www/ang/dist/
