# Provider Block
provider "aws" {
  region = var.aws_region
}


locals {
  vpc_id       = "data.aws_vpc.vpc01.id"
  ami_id         = "data.aws_ami.ubuntu_20_04.id"
  instance_type  = "t2.micro"
  key_name       = "terraform-key"
  subnet_id      = "data.aws_subnet.subnet01.id"
  aws_region     = "us-east-1"

common_tags       = {
  "AssetID"       = "2560"
  "AssetName"     = "Insfrastructure"
  "Teams"         = "DEL"
  "Environment"   = "pre_pod"
  "Project"       = "alpha"
  "CreateBy"      = "Terraform"
  "cloudProvider" = "aws"

}
}

module "my_module" {
  # source = "C:\\Users\\anike\\Anike_Hands on_Terraform\\packer\\Module_practice\\ec2 module practice"
  source = "../../ec2 module practice"

  vpc_id         = local.vpc_id
  ami_id         = local.ami_id
  instance_type  = local.instance_type
  key_name       = local.key_name
  subnet_id      = local.subnet_id
  common_tags    = local.common_tags
}


