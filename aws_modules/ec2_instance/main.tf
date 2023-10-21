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



resource "aws_instance" "ec2_instance" {
  ami             = var.ami_id
  subnet_id       = var.subnet_id
  instance_type   = var.instance_type
  key_name        = var.ami_key_pair_name
  security_groups = [aws_security_group.security_group.id,]
  count           = var.number_of_instances


  tags = {
    Name = "instance-${count.index}"
  }
}


resource "aws_eip" "elastic_ip" {
  instance = aws_instance.ec2_instance.id
  vpc      = true
}