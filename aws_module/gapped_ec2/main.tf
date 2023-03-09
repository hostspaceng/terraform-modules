######################################################
##                creating instance                 ##
######################################################     

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

######################################################
##               creating EBS volume                ##
######################################################  

resource "aws_ebs_volume" "ebs_volume" {
  count = var.no_of_volumes
  availability_zone = "us-east-1a"
  size              = 50
  type              = "gp2"
}

######################################################
##    Attachmening the volume to the instance       ##
######################################################  

resource "aws_volume_attachment" "ebs_att" {
  count       = 2
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.ebs_volume.*.id[count.index]
  instance_id = element(aws_instance.ec2_instance.*.id, ((count.index + 1) % 2))
}

######################################################
##        creating Airgapped security group         ##
######################################################  

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
    cidr_blocks = ["192.168.100.0/24"] #could be modified to block of ips youll like to allow acces

  }

  tags = {
    Name = "Airgapped security group "
  }

}

