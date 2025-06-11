#custom vpc using ip range
#enabled DNS
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true

#tag for easy id
  tags = {
    Name = "multi-cloud-vpc"
  }
}

#create subnet
#ec2 launches with public ip auto
resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.main
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = true
    availability_zone = "us-east-1a"
  
}

#create internet gateway to connect vpc to www
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Names = "internet-gateway"
  }
}

#create routing table
#all outbound go through int gateway
resource "aws_route_table" "public_rt" {
    vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public-route-table"
  }

}

#connects subnet to route-table
resource "aws_route_table_association" "public_assoc" {
  subnet_id = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_rt.id
}