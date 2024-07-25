terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16" 
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0b72821e2f351e396"
  instance_type = "t2.micro"
  key_name      = "lcchua-useast1-20072024"
  subnet_id     = "subnet-0b3f026e9d6288a67"
  associate_public_ip_address = true
#  vpc_security_group_ids = ["lcchua-allow-ssh-http"]

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

