provider "aws" {
  region = var.aws_region
}
# EC2 Instance
resource "aws_instance" "ec2" {
  ami                      = data.aws_ami.ubuntu_20_04.id
  instance_type            = var.instance_type
  key_name                 = var.key_name
  vpc_security_group_ids = [aws_security_group.bastion_sg.id]
  subnet_id                = data.aws_subnet.subnet01.id
  # vpc_id                   = var.vpc_id

  tags = merge(var.common_tags, {
    Name = format("%s-%s-%s-bastion-host", var.common_tags["AssetID"], var.common_tags["Environment"], var.common_tags["Project"])
    },
  )
}


