# Creating an AWS Ec2 instance with Terraform

Basic configuration for creating aws instance, and playing around with terraform command


## Perequisite

- install aws cli  on your terminal  using the command below
`curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install`

- To use your IAM credentials to authenticate the Terraform AWS provider, set the AWS_ACCESS_KEY_ID environment variable.
   
   run `aws configure` and set the following

  `export AWS_ACCESS_KEY_ID=` enter your access key id
  
  `export AWS_SECRET_ACCESS_KEY=` Set secret key
  
  
## Next steps
run `terraform init`, =====> `terraform plan` =======> and lastly `terraform apply`


Run `aws eks update-kubeconfig --region us-east-1` to update kubernates context in ordert to conect with the cluster

To confirm if we can access eks run `kubectl get nodes`

## Assuming eks-admin Iam role

- By default user1 would be created download access keys for the user from the console.

- create a local aws profile for the new user `aws configure --profile user1` and insert access key and security key

To Assume eks-admin role edit the `.aws/config` file and add the following

```[profile eks-admin]
role_arn = add role arn
source_profile = user1```

To Confirm if you have assumed the eks-admim role `aws sts get-caller-identity --profile eks-admin`

Update kubernates config to use eks-admin profile `aws eks update-kubeconfig \` fill the promts with the following

 ```> --name hostspace-eks\
 > --region us-east-1 \
 > --profile eks-admin```

confirm you can access eks with the eks-admin profile run

`kubectl auth can-i "*" "*"`




 

