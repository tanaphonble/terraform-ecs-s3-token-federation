#!/bin/sh

cd infra
echo "access_key = \"\"
secret_key = \"\"
database_name = \"\"
database_username = \"\"
database_password = \"\"" >secrets.tfvars

terraform init
