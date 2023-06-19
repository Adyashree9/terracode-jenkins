terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0989fb15ce71ba39e"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
count = 3
}
