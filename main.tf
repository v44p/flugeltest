provider "aws" { 
  
  region = "eu-west-1"
  access_key = "AKIA3SD5ESXD53G3ILWS"
  secret_key = "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"
  default_tags {
    tags = {
      Name = "Flugel"
      Owner = "InfraTeam"
    }
   }
}

resource "aws_instance" "Flugel" {
  instance_type = "t2.micro"
  ami = "ami-09d19e919d57453f8"
}

resource "aws_s3_bucket" "b" {
  bucket = "flugelbucket"
  acl    = "private"
}

resource "aws_vpc" "flugel" {
  cidr_block = "10.0.0.0/16"

}