terraform {
  required_providers {
    example = {
      source  = "mbialon/example"
      version = "1.0.2"
    }
  }
}

provider "example" {}

#provider "aws" {
#  region = "eu-west-1"
#}

terraform {
  backend "s3" {}
}

resource "scaffolding_example" "test1" {
  provider   = example
  read_delay = "10s"
}

#resource "aws_vpc" "this" {
#    cidr_block = "10.0.0.0/16"
#    tags = {
#      Name  = "vpc1"
#      env   = "dev"
#      owner = "config1"
#    }
#}
