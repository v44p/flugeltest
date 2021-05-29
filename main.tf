provider "aws" { 
  
  region = "eu-west-1"
  access_key = "my-access-key"
  secret_key = "12345"
  default_tags {
    tags = {
      Name = "Flugel"
      Owner = "InfraTeam"
    }
   }
}

resource "aws_instance" "Flugel" {
  instance_type = "t2.micro"
  ami = "ami-0d5d9d301c853a04a"
}

resource "aws_s3_bucket" "b" {
  bucket = "FlugelBucket"
  acl    = "private"
}

resource "aws_vpc" "flugel" {
  cidr_block = "10.0.0.0/16"

}