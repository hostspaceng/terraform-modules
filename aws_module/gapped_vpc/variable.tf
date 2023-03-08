variable "vpc_name" {
  type    = string
  default = "hs_vpc"
}

variable "ag_route_table" {
  type    = string
  default = "ag_rt"
}

variable "sg_security_group" {
  type    = string
  default = "ag_security_group"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

data "aws_availability_zones" "available" {
  state = "available"
}