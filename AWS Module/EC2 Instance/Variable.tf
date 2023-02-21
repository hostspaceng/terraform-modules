variable "access_key" {
        description = "Access key to AWS console"
        type = Secret

}
variable "secret_key" {
        description = "Secret key to AWS console"
        type = secret_key
}

variable "region" {
    type = string
}

variable "instance_name" {
    description = "Value of the Name tag for the EC2 instance"
    type        = string
}

variable "instance_name" {
        description = "Name of the instance to be created"
        type = string
}

variable "instance_type" {
        description = "type of instance "
        default = "t2.micro"
}

variable "subnet_id" {
        description = "The VPC subnet the instance(s) will be created in"
        type = string
}

variable "ami_id" {
        description = "The AMI to use"
        type = string
}

variable "number_of_instances" {
        description = "number of instances to be created"
        default = 1
}


variable "ami_key_pair_name" {
        description = "name of your keypair"
}