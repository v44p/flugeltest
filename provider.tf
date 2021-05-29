provider "aws" { 
  
  region = "eu-west-1"
  
  default_tags {
    tags = {
      Name = "Flugel"
      Owner = "InfraTeam"
    }
   }
}