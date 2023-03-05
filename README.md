# How to use the Terraform Modules

This Terraform module provisions various aws resources in your infrastructure.

## Usage

To use this module, follow these steps:

1. Clone this repository


2. Navigate to the directory containing the module of your choice


3. Initialize the module: `terraform init`


4. Provide values for any required input variables. You can either set these directly in a `terraform.tfvars` file, or by passing them as defult variables in the `variable.tf` file.
5. to confirm resources to be implemented run: `terraform plan`

6. Apply the module: `terraform apply`


This will create the resources defined in the module.

7. To clean up the resources, run: `terraform destroy`
