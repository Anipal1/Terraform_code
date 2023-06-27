
vpc_id         = "data.aws_vpc.vpc01.id"
ami_id         = "data.aws_ami.ubuntu_20_04.id"
instance_type  = "t2.micro"
key_name       = "anike-matt"
subnet_id      = "data.aws_subnet.subnet01.id"
aws_region     = "us-east-1"

common_tags    ={
  "AssetID"       = "2560"
  "AssetName"     = "Insfrastructure"
  "Teams"         = "DEL"
  "Environment"   = "dev"
  "Project"       = "alpha"
  "CreateBy"      = "Terraform"
  "cloudProvider" = "aws"

}

