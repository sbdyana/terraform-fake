provider "aws" {
  region     = "ap-northeast-2"
  assume_role {
    role_arn = var.role
  }
}

resource "aws_vpc" "main_vpc" {
  cidr_block           = "172.0.0.0/16" # Sentinel Policy 1 위반
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "skax-github-webhook-test2"
  }
}

resource "aws_security_group" "main_sg" {
  name        = "skax-test-sg"
  description = "Test Security Group"
  vpc_id      = aws_vpc.main_vpc.id

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]   # Sentinel Policy 2 위반
  }

  tags = {
    Name = "skax-test-sg"
  }
}
