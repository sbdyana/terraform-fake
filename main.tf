provider "aws" {
  region     = "ap-northeast-2"
  assume_role {
    role_arn = var.role
  }
}

resource "aws_vpc" "main_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "main-terraform-test"
  }
}
