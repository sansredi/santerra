variable "region" {
    default = "eu-west-2"
    description = "AWS Region"
}

variable "vpc_cidr_block" {
    default = "192.168.0.0/16"
    description = " vpc cidr block "
}

variable "public_subnet_cidr_block" {
    default = "192.168.10.0/24"
    description = "public subnet cidr block"
}

variable "private_subnet_cidr_block" {
    default = "192.168.20.0/24"
    description = "private subnet cidr block"
}

variable "aws_instance" {
    default = "ami-0f3d9639a5674d559"
    description = "terraform instance"
}