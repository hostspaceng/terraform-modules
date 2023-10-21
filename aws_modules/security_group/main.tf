resource "aws_security_group" "security_group" {

  name = "${var.security_group}"
  vpc_id = [value]

  ingress = [ {
    cidr_blocks = [ "value" ]
    description = "value"
    from_port = 1
    ipv6_cidr_blocks = [ "value" ]
    prefix_list_ids = [ "value" ]
    protocol = "value"
    security_groups = ["value"]
    self = false
    to_port = 1
  } ]

  egress = [ {
    cidr_blocks = [ "value" ]
    description = "value"
    from_port = 1
    ipv6_cidr_blocks = [ "value" ]
    prefix_list_ids = [ "value" ]
    protocol = "value"
    security_groups = [ "value" ]
    self = false
    to_port = 1
  } ]
}