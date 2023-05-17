terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  profile = "devopstraining"
}

resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.10.0/16"
  tags = {
    Name = "Terraform-VPC"
  }
}