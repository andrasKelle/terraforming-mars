resource "aws_security_group" "http_mysql_ssh" {
  name        = "wordpress-cc-demo-sg"
  description = "Allow HTTP, MySQL SSH traffic"
  vpc_id      = "${var.vpc_id}"

  ingress {
    description      = "HTTP"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "MySQL from VPC"
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    cidr_blocks      = ["${var.subnet_a_cidr}", "${var.subnet_b_cidr}", "${var.subnet_c_cidr}"]
  }

  ingress {
    description      = "SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "wordpress-http-mysql-ssh"
  }
}