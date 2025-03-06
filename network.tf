 availability_zone       = "us-east-1b" # Use a different AZ
  map_public_ip_on_launch = true

  tags = {
    Name = "eks-public-subnet-2"
  }
}
resource "aws_security_group" "eks-sg" {
  vpc_id = aws_vpc.eks-vpc.id

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "eks-security-group"
  }
}
