output "Private_ip" {
  value = zipmap(aws_instance.ec2_instance.*.tags.Name, aws_instance.ec2instance.*.private_ip)
}

output "Public_ip" {
  value = zipmap(aws_instance.ec2_instance.*.tags.Name, aws_instance.ec2instance.*.private_ip)
}


output "public_dns" {
  value = zipmap(aws_instance.ec2instance.*.tags.Name, aws_eip.eip.*.public_dns)
}

output "private_dns" {
  value = zipmap(aws_instance.ec2instance.*.tags.Name, aws_instance.ec2instance.*.private_dns)
}