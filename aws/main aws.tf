#launches ec2 instance
resource "aws_instance" "aws_vm" {
  ami           = "ami-0c94855ba95c71c99" # Amazon Linux 2 (us-east-1)
  instance_type = "t2.micro"

  tags = {
    Name = "AWS_VM"
  }
}

