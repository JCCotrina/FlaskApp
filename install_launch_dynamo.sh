#!/bin/bash -ex
sudo yum update -yum
sudo yum -y install python3 mysql
sudo pip3 install -r requirements.txt
sudo amazon-linux-extras install epel
sudo yum -y install stress
export PHOTOS_BUCKET=${SUB_PHOTOS_BUCKET}
export AWS_DEFAULT_REGION=us-east-2
export DYNAMO_MODE=on
