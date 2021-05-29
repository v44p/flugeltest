resource "aws_instance" "Flugel" {
  instance_type = "t2.micro"
  ami = "ami-0d5d9d301c853a04a"
}