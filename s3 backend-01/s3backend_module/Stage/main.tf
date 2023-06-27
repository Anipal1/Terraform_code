# Provider Block
provider "aws" {
  region = var.aws_region
}


locals {
 versioning = true
 prevent_destroy = true
 aws_region     = "us-east-1"

common_tags       = {
  "AssetID"       = "2560"
  "AssetName"     = "Insfrastructure"
  "Teams"         = "DEL"
  "Environment"   = "stage"
  "Project"       = "alpha"
  "CreateBy"      = "Terraform"
  "cloudProvider" = "aws"

}
}
# /Users/paulinusanike/Desktop/code/new/ec2 module practice/s3 backend-01
module "s3backend" {
  # source = "C:\\Users\\anike\\Anike_Hands on_Terraform\\packer\\Module_practice\\ec2 module practice"
  source = "../../../s3 backend-01"

  versioning = local.versioning
 
  

  common_tags     = local.common_tags
}


