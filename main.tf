# main.tf - Simple Terraform configuration
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "local_file" "example" {
  filename = "example.txt"
  content  = "Hello from Terraform CI/CD!"
}
