provider "aws" {

  region  = "ap-northeast-3"

}
 
resource "aws_instance" "app_server" {

  ami           = "ami-0672b175139a0f8f4"

  instance_type = "t2.micro"
 
  tags = {

    Name = "ExampleAppServerInstance"

  }

}
 
