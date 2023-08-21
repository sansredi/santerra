
resource "aws_vpc" "myownvpc" {
    cidr_block = var.vpc_cidr_block
}

resource "aws_subnet" "public_subnet" {
    cidr_block = var.public_subnet_cidr_block
    vpc_id = aws_vpc.myownvpc.id
}

resource "aws_subnet" "private_subnet" {
    cidr_block = var.private_subnet_cidr_block
    vpc_id =aws_vpc.myownvpc.id
}

resource "aws_instance" "myec2instance" {
    ami = var.aws_instance
    instance_type = "t2.micro"
    
}