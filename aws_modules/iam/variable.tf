variable "Region" {
  default = "us-east-1"
}

variable "username" {
  type    = list(string)
  default = ["user1", "user2"]
}

