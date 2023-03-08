
variable "region" {
  type    = string
  default = "us-east-1"
}

variable "instance_name" {
  description = "Name of the instance to be created"
  type        = string
  default     = "hostapace_ec2"
}

variable "instance_type" {
  description = "type of instance "
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "The VPC subnet the instance(s) will be created in"
  type        = string
  default = "subnet-057a97a7c3626bf64"
}

variable "ami_id" {
  description = "The AMI to use"
  type        = string
  default     = "ami-006dcf34c09e50022"
}

variable "number_of_instances" {
  description = "number of instances to be created"
  default     = 1
}


variable "ssh_private_key" {
  description = "pem file of Keypair we used to login to EC2 instances"
  type        = string
  default     = "mykeypair"
}