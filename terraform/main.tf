resource "aws_vpc" "mainvpc"{
    cidr_block           = "172.31.0.0/26"
    instance_tenancy     = "default"
    enable_dns_hostnames = true
}

resource "aws_subnet" "sn1"{
    cidr_block              = "172.31.1.0/28"
    vpc_id                  = aws_vpc.mainvpc.id
    availability_zone       = "us-east-1a"
    map_public_ip_on_launch = true
}

resource "aws_subnet" "sn2"{
    cidr_block              = "172.31.2.0/28"
    vpc_id                  = aws_vpc.mainvpc.id
    availability_zone       = "us-east-1b"
    map_public_ip_on_launch = true
}

resource "aws_subnet" "sn3"{
    cidr_block              = "172.31.3.0/28"
    vpc_id                  = aws_vpc.mainvpc.id
    availability_zone       = "us-east-1c"
    map_public_ip_on_launch = true
}

resource "aws_security_group" "sg"{
    name    = "sg"
    vpc_id  = aws_vpc.mainvpc.id

    ingress{
        description = "https"
        from_port   = 5000
        to_port     = 5000
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress{
        description = "https"
        from_port   = 443
        to_port     = 443
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress{
        description = "https"
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress{
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

# Internet Gateway para criação da Task do ECS Fargate
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.mainvpc.id
}

resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.mainvpc.id

# Rota para tasks
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
}

resource "aws_route_table_association" "route1" {
  route_table_id = aws_route_table.rt.id
  subnet_id      = aws_subnet.sn1.id
}

resource "aws_route_table_association" "route2" {
  route_table_id = aws_route_table.rt.id
  subnet_id      = aws_subnet.sn2.id
}

resource "aws_route_table_association" "route3" {
  route_table_id = aws_route_table.rt.id
  subnet_id      = aws_subnet.sn3.id
}