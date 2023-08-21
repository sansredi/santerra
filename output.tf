output "vpc_id" {
    value = aws_vpc.myownvpc.id
}

output "vpc_cidr" {
    value = aws_vpc.myownvpc.cidr_block
}

output "public_subnet_cidr_block" {
    value = aws_subnet.public_subnet.cidr_block
}

output "private_subnet_cidr_block" {
    value = aws_subnet.private_subnet.cidr_block
}

output "aws_instance" {
    value = aws_instance.myec2instance.id
}
