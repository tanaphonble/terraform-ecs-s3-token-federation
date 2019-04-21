# Terraform project

## Install terraform

1. download terrafrom
   [click here...](https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_darwin_amd64.zip)
2. unzip and copy terraform to this directory
3. move `terraform` app to /usr/local/bin/
   > mv terraform /usr/local/bin/
4. check command terraform is available

   > terraform version

   it should prinnt out `Terraform v0.11.13`

## Initialize terraform

1. run
   > make init
2. update secrets in infra/secrets.tfvars

```txt
access_key = <<ACCESS_KEY>>
secret_key = <<SECRET_KEY>>
```

## Identity changes

1. run
   > make deploy

## Clear

1. run
   > make destroy
2. answer `yes`
