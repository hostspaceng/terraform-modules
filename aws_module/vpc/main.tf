data "aws_availability_zones" "available"{}

locals {
  name = var.vpc_name

}

module "vpc" {
    source = "terraform-aws-modules/vpc/aws"
    name  = "${var.name}"
    cidr = "10.0.0.0/16"

    azs  = slice(data.aws_availability_zones.available.names, 0, 3)
    private_subnet = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
    public_subnets = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

    enable_nat_gateway = true
    single_nat_gateway   = true
    enable_dns_hostnames = true
    
    tags = {

    }
}