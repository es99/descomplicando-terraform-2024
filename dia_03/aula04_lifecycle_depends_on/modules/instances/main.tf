data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] #Canonical
}

resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = "t3.micro"

  lifecycle {
    create_before_destroy = true
    ignore_changes        = [tags]
  }

  depends_on = [aws_instance.bd]

  tags = {
    Name        = var.instance_name
    Environment = var.ambiente
  }
}

resource "aws_instance" "bd" {
  ami           = var.ami_bd
  instance_type = "t3.micro"

  lifecycle {
    create_before_destroy = true
    ignore_changes        = [tags]
  }

  tags = {
    Name        = var.instance_name
    Environment = var.ambiente
  }
}