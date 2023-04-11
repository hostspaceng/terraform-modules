output "private_dns" {
  value = zipmap(aws_instance.ec2_instance.*.tags.Name, aws_instance.ec2_instance.*.private_dns)
}

output "Public_ip" {
  value = zipmap(aws_instance.ec2_instance.*.tags.Name, aws_instance.ec2_instance.*.private_ip)
}

output "public_dns" {
  value = zipmap(aws_instance.ec2_instance.*.tags.Name, aws_instance.ec2_instance.*.public_dns)
}