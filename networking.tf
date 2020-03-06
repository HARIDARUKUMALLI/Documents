#To Create A custom VPC
resource "aws_vpc" "main" {
  cidr_block = "${var.vpc_network_cidr}"
  instance_tenancy = "default"
  tags = {
    Name = "${var.vpc_name}"
  }
}

#To create a Pubic Subnet
resource "aws_subnet" "main" {
  vpc_id = "${var.vpc_id}"
  cidr_block = "${var.subnet_cidr}"
  availability_zone = "${var.instance_AZ}"
  tags = {
    Name = "${var.subnet_name}"
  }
}
output "vpc_id" {
  value = "${aws_vpc.main.id}"
}
output "subnet_id" {
  value = "${aws_subnet.main.id}"
}
