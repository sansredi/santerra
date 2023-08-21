terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~>5.0"
            #region = "eu-west-2"
        }
    }
    required_version = ">=1.5.0"
}

resource "aws_instance" "TerraInstance" {
    ami = "ami-0eb260c4d5475b901"
    instance_type ="t2.micro"
tags = {
    Name = "Terrafrom_instance"
}
}

resource "aws_vpc" "myownvpc" {
    cidr_block = "10.1.0.0/16"
}

resource "aws_subnet" "public_subnet" {
    cidr_block = "10.1.10.0/24"
    vpc_id= aws_vpc.myownvpc.id
}

resource "aws_subnet" "private_subnet" {
    cidr_block = "10.1.20.0/24"
    vpc_id= aws_vpc.myownvpc.id
}