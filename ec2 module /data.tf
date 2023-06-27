data "aws_vpc" "vpc01" {
  filter {
    name   = "tag:Name"
    values = ["vpc01"]
  }
}

data "aws_subnet" "subnet01" {
  filter {
    name   = "tag:Name"
    values = ["subnet01"]
  }
}


