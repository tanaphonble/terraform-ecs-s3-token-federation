#!/bin/sh

cd infra
terraform plan -var-file="secrets.tfvars" -out app.tfplan
