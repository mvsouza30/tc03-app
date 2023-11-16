resource "aws_vpc" "mainvpc"{
    cidr_block           = "172.31.0.0/16"
    instance_tenancy     = "default"
    enable_dns_hostnames = true
}

resource "aws_subnet" "sn1"{
    cidr_block              = "172.31.1.0/24"
    vpc_id                  = aws_vpc.mainvpc.id
    availability_zone       = "us-east-1a"
    map_public_ip_on_launch = true
}

resource "aws_subnet" "sn2"{
    cidr_block              = "172.31.2.0/24"
    vpc_id                  = aws_vpc.mainvpc.id
    availability_zone       = "us-east-1b"
    map_public_ip_on_launch = true
}

resource "aws_subnet" "sn3"{
    cidr_block              = "172.31.3.0/24"
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
        cidr_blocks = ["191.5.227.137/32"] #Apenas meu IP
    }

    ingress{
        description = "https"
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["191.5.227.137/32"] #Apenas meu IP
    }

    egress{
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}