#create security group
resource "aws_security_group" "vm_sg" {
  name = "vm_security_group"
  description = "Allow SSH and HTTP access"
  vpc_id = aws_vpc.main.id

#create incoming SSH rules
  ingress {
    description = "SSH access"
    from_port =  22
    to_port = 22
    protocol = "SSH"
    cidr_blocks = [ "192.168.1.231/24" ]
  }

#create incoming HTTP rules
  ingress {
    description = "HTTP access"
    from_port =  80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

#outbound rules
  egress {
    description = "Allow all outbound"
    from_port =  0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = vm_security_group
  }
}