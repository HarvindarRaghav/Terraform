#we have to define the provider in order to use terraform with that provider
resource "aws_vpc" "dev_vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name="dev"
    }
  
}