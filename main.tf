provider "aws" {
  region = "ap-south-1"  # Specify your desired region
}

resource "aws_instance" "example" {
  ami           = "ami-08718895af4dfa033"  # This is a common Amazon Linux 2 AMI, change based on your region
  instance_type = "t2.micro"               # Free tier eligible instance

  tags = {
    Name = "MySimpleEC2"
  }
}
