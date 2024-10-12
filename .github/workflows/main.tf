terraform {

  required_providers {

    aws = {

      source = "hashicorp/aws"

      version = "~>5.0"

    }

  }

}
 
provider "aws" {

  region  = "ap-southeast-2"

}
 
resource "aws_instance" "app_server" {

  ami           = "ami-0672b175139a0f8f4"

  instance_type = "t2.micro"
 
  tags = {

    Name = "ExampleAppServerInstance"

  }

}
 
