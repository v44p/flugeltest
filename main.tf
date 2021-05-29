provider "aws" { 
  
  region = "us-west-1"
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
  ami           = "ami-04468e03c37242e1e"
  instance_type = "t2.micro"
  }

resource "aws_s3_bucket" "b" {
  bucket = "flugelbucket"
  acl    = "private"
}
