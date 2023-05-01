data "aws_ami" "ubuntu" {
    most_recent = true

    filter {
        name = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
    }

    owners = ["099720109477"] # Ubuntu
}

resource "aws_instance" "web" {
  ami           = "ami-0885b1f6bd170450c"
  instance_type = "t2.micro"
  key_name = "nathaliapaulon.io"

  tags = {
    Name = "HelloWorld"
  }
}