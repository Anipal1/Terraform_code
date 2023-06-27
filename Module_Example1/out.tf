output "ami_id" {
  value = "data.aws_ami.ubuntu_20_04.id"
}

output "aws_vpc" {
  value = "data.aws_vpc.vpc01.id"
}


output "aws_subnet" {
  value = "data.aws_subnet.subnet01.id"
}

