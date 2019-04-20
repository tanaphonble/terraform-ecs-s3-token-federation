#!/bin/sh

cd infra
terraform destroy -var-file="secrets.tfvars"
