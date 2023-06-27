
variable "vpc_id"{
  type = string
  default = "vpc01.id"
} 

variable "subnet_id"{
  type = string
  default = "subnet01.id"
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "ami_id"{
  type = string
  default = "data.aws_ami.ubuntu_20_04.id"
}

variable "instance_type"{
  type = string
  default = "t2.micro"
}

variable "key_name"{
  type = string
  default = "anike-matt"
}

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

