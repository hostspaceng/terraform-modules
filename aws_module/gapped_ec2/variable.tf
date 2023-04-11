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
  default     = "t2.medium"
}

variable "number_of_instances" {
  description = "number of instances to be created"
  default     = 2
}

variable "no_of_volumes" {
  description = "number of volumes to be created"
  default     = 2
}

variable "ami_id" {
  description = "The AMI to use (default ami is a red hat ami)"
  type        = string
  default     = "ami-0c9978668f8d55984"
}


variable "key_pair" {
  description = "name of your keypair"
  default     = "airgapkey"
}


variable "subnet_id" {
  description = "The VPC subnet the instance(s) will be created in"
  type        = string
  default     = "Subnet-03620001daceb2376"
}

variable "ec2_storage" {
  type = map(object({
    size = number
    type = string
  }))

  default = {
    "ec2-storage" = {
      size = 50
      type = "gp2"
    }
  }
}