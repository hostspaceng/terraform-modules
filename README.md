# Example Terraform Module

This Terraform module provisions an EC2 instance resource in your infrastructure.

## Usage

To use this module, follow these steps:

1. Clone this repository


2. Navigate to the directory containing the ec2 module


3. Initialize the module: `terraform init`


4. Provide values for any required input variables. You can either set these directly in a `terraform.tfvars` file, or by passing them as defult variables in the `variable.tf` file.

5. Apply the module: `terraform apply`


This will create the resources defined in the module.

6. To clean up the resources, run: `terraform destroy`




## Outputs

This module provides the following outputs:

- `private_ip`: the instance private ip.
- `public_ip`: the instance public ip.
- `private_dns`: the instance private dns.


You can reference these outputs in your Terraform code or by using the `terraform output` command.



