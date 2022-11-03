terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.38.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKCHAVEDOUSUARIOAUTORIZADOAQUI"
  secret_key = "SECRECTKEYDOUSUARIOAUTORIZADO"
}

resource "aws_instance" "marquinho" {
  instance_type = "t1.micro"
  ami           = "ami-09d3b3274b6c5d4aa"
}
