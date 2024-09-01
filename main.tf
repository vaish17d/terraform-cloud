terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region_name
  access_key= var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "myec2" {
  ami           = "ami-0522ab6e1ddcc7055"
  instance_type = "t2.micro"
  tags ={
    Name = "server"
  }
}
