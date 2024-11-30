#!/bin/bash

# Check if environment is specified
if [ -z "$1" ]; then
  echo "Usage: ./destroy.sh <environment>"
  exit 1
fi

ENV=$1

# Destroy Terraform-managed infrastructure for the specified environment
echo "Destroying Terraform infrastructure for ${ENV} environment..."
terraform destroy -var-file="envs/${ENV}/terraform.tfvars" -auto-approve
