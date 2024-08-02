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

data "terraform_remote_state" "aula_outputs" {
  backend = "s3"
  config = {
    bucket = "estudosterraform-engels"
    key    = "aula-outputs"
    region = "us-east-2"
  }
}

resource "aws_instance" "web" {
  ami           = var.image_id
  instance_type = "t3.micro"

  tags = {
    Name     = "HelloWorld"
    Platform = data.aws_ami.ubuntu.platform_details
  }
}