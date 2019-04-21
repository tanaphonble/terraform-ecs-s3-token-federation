#!/bin/sh

cd infra
echo "access_key = \"\"
secret_key = \"\"" >secrets.tfvars

terraform init
