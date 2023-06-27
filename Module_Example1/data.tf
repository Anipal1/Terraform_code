# # data "aws_vpc" "ec2_vpc" {
# #   filter {
# #     name   = "vpc01"
# #     values = ["dev_production"]
# #   }
# # }

# data "aws_subnet" "ec2_subnet" {
#   filter {
#     name   = "subnet01"
#     values = ["dev_production"]
#   }
# }


# data "aws_ami" "ubuntu_20_04" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["099720109477"] # Canonical
# }

# data "aws_vpc" "ec2_vpc" {
#   filter {
#     name   = "vpc01"
#     values = ["dev_production"]
#   }
# }





# data "aws_vpc" "vpc01" {
#   filter {
#     name   = "tag:Name"
#     values = ["data.aws_vpc.vpc01.id"]
#   }
# }

data "aws_subnet" "subnet01" {
  filter {
    name   = "tag:Name"
    values = ["subnet01"]
  }
}


data "aws_ami" "ubuntu_20_04" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

# data "aws_vpc" "bastion_vpc" {
#   filter {
#     name   = "vpc01"
#     values = ["dev_production"]
#   }
# }

data "aws_vpc" "bastion_vpc" {
  id = "vpc-0dd6e691eae05e348"
}



