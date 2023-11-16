terraform {

  cloud {
    organization = "tareq_terra"

    workspaces {
      name = "Discord-Project-TF"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }



  required_version = ">= 0.15"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"

}
