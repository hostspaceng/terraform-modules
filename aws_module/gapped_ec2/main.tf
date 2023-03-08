resource "aws_instance" "ec2_instance" {
  ami             = var.ami_id
  subnet_id       = var.subnet_id
  instance_type   = var.instance_type
  key_name        = var.key_pair
  security_groups = [aws_security_group.security_group.id, ]
  count           = var.number_of_instances


  tags = {
    Name = "${var.instance_name}-${count.index}"
  }
}

resource "aws_security_group" "security_group" {

  name        = "instance-sg"
  description = "Allow ssh inbound traffic"


  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {
    Name = "Airgapped security group "
  }

}