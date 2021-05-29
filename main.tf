provider "aws" { 
  region = "eu-west-1"
  default_tags {
    tags = {
      Name = "Flugel"
      Owner = "InfraTeam"
    }
   }
}


resource "aws_vpc" "flugel" {
  cidr_block = "10.0.0.0/16"

}


resource "aws_instance" "Flugel" {
  instance_type = "t2.micro"
  
}
resource "aws_s3_bucket" "b" {
  bucket = "FlugelBucket"
  acl    = "private"
}