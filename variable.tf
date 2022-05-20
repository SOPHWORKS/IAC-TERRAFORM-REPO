variable "region" {
    type = string
    description = "aws provider region"
    default = "us-east-1"
  }

  variable "ami_id" {
    type = string
    description = "aws ec2 ami"
    default = "ami-09d56f8956ab235b3"
  
}

variable "instance_type" {
    type = string
    description = "ec2 instance type"
    default = "t2.micro"
  
}

variable "cidr_block" {
    type = string
    description = "vpc cidr_block"
    default = "100.0.0.0/16"
  
}

variable "public_subnet" {
    type = string
    description = "public_subnet cidr_block"
    default = "100.0.0.0/24"
  
}

variable "private_subnet" {
    type = string
    description = "private subnet cidr_block"
    default = "100.0.1.0/24"
  
}