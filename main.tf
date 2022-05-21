
locals {
  vpc_id = aws_vpc.my_vpc.id
}
resource "aws_vpc" "my_vpc" {
  cidr_block = var.cidr_block
}

#using var.ami_id

/*resource "aws_instance" "web" {
  ami           =  var
  instance_type = var.instance_type

  tags = {
    Name = "terraform"
  }
}*/

#using datasource instead of var.ami_id

resource "aws_instance" "web" {
  ami           =  data.aws_ami.my_ami.id
  instance_type = var.instance_type

  tags = {
    Name = "terraform"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = local.vpc_id
  cidr_block              = var.public_subnet
  availability_zone       = data.aws_availability_zones.azs.names[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "public_subnet"
  }
}


resource "aws_subnet" "private_subnet" {
  vpc_id            = local.vpc_id
  cidr_block        = var.private_subnet
  availability_zone = data.aws_availability_zones.azs.names[1]

  tags = {
    Name = "private_subnet"
  }
}

