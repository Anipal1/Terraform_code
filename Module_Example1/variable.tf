

variable "common_tags" {
  type = map(any)
  default = {
    "AssetID"       = "2560"
    "AssetName"     = "Insfrastructure"
    "Teams"         = "DEL"
    "Environment"   = "dev"
    "Project"       = "alpha"
    "CreateBy"      = "Terraform"
    "cloudProvider" = "aws"
  }
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "aws_ami_id" {
  type        = string
  default     = "aws_ami.ubuntu_20_04.id"
}

variable "key_name" {
  type    = string
  default = "terraform-key"
}

variable "vpc_id" {
  type = string
  default = "aws_vpc.data.aws_vpc.vpc01"
}

variable "subnet_id" {
  type = string
  default = "aws_subnet.subnet01.id"
}







