# How to Use the Terraform Modules

These Terraform modules are designed to help you quickly and easily provision AWS resources. Hosted on [hostspaceng/terraform-modules](https://github.com/hostspaceng/terraform-modules), these modules are open for contributions and enhancements to make cloud resource provisioning a breeze.

## Prerequisites

- Terraform installed on your machine. If not, download and install it from [terraform.io](https://www.terraform.io/downloads.html).
- AWS CLI installed and configured with the necessary access rights.

## Usage

### Step 1: Create a New Terraform Configuration File

In your project directory, create a new Terraform configuration file, such as `main.tf`.

### Step 2: Use the Module in Your Configuration

Add a module block to your Terraform configuration file, referencing the desired module from the `hostspaceng/terraform-modules` repository. Here’s an example that uses the `test_abl` module:

```hcl
module "test_alb" {
  source = "github.com/hostspaceng/terraform-modules//aws_module/load_balancer"
  # Add your input variables here
}
```

### Step 3: Initialize Your Configuration

Run `terraform init` to initialize your configuration, download the specified modules, and install the required providers.

### Step 4: Apply the Configuration

Run `terraform apply` to create the specified resources. You will be asked to confirm that you want to create the resources, type `yes` to proceed.

### Step 5: Clean Up Resources (Optional)

When you no longer need the resources, you can destroy them by running `terraform destroy`.

## Contributing

We welcome contributions and improvements to our modules. Feel free to fork the repository, make enhancements, and open pull requests. We also encourage opening issues for discussion before submitting pull requests.

Additionally, if you find bugs or areas of improvement, don’t hesitate to open an issue to let us know.

### Community Engagement

Your insights and expertise can help improve the quality and performance of our Terraform modules for the benefit of the entire community. Every contribution is valuable, and together, we can make cloud resource management efficient and hassle-free!
