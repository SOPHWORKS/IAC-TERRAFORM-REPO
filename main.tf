
locals {
  vpc_id = aws_vpc.my_vpc.id
}
resource "aws_vpc" "my_vpc" {
  cidr_block = var.cidr_block
}


resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "terraform"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = local.vpc_id
  cidr_block              = var.public_subnet
  availability_zone       = "data.aws_availabilty_zones.azs.names[0]"
  map_public_ip_on_launch = true

  tags = {
    Name = "public_subnet"
  }
}


resource "aws_subnet" "private_subnet" {
  vpc_id            = local.vpc_id
  cidr_block        = var.private_subnet
  availability_zone = "data.aws_availabilty_zones.azs.names[1]"

  tags = {
    Name = "private_subnet"
  }
}

