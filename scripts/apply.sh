#!/bin/bash

# Check if environment is specified
if [ -z "$1" ]; then
  echo "Usage: ./apply.sh <environment>"
  exit 1
fi

ENV=$1

# Apply Terraform configuration for the specified environment
echo "Applying Terraform configuration for ${ENV} environment..."
terraform apply -var-file="envs/${ENV}/terraform.tfvars" -auto-approve
