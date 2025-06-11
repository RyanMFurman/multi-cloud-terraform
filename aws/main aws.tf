#launches ec2 instance
resource "aws_instance" "aws_vm" {
  ami           = "ami-0c94855ba95c71c99" # Amazon Linux 2 (us-east-1)
  instance_type = "t2.micro"
  subnet_id                   = aws_subnet.public_subnet.id
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.vm_sg.id]

  tags = {
    Name = "AWS_VM"
  }
}

