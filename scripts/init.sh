#!/bin/bash

# Initialize Terraform working directory
echo "Initializing Terraform..."
terraform init

# Validate configuration
echo "Validating Terraform configuration..."
terraform validate
