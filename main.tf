provider "aws"{
	region = "us-east-1"
  default_tags {
    tags = {
      Name = "Flugel"
      Owner = "InfraTeam"
    }
   }
}

resource "aws_instance" "Flugel" {
  ami           = "ami-0d5eff06f840b45e9"
  instance_type = "t2.micro"
  }

resource "aws_s3_bucket" "flugelb" {
  bucket = "flugelbucket"
  acl    = "private"
}
