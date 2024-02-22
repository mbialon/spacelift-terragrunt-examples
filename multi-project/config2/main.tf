terraform {
  backend "s3" {}
}

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

resource "scaffolding_example" "test2" {
  provider   = example
  read_delay = "10s"
}

resource "scaffolding_example" "test21" {
  provider   = example
  read_delay = "10s"
}

resource "scaffolding_example" "test22" {
  provider   = example
  read_delay = "10s"
}

resource "scaffolding_example" "test23" {
  provider   = example
  read_delay = "10s"
}

#provider "aws" {
#  region = "eu-west-1"
#}

#resource "aws_subnet" "this" {
#    cidr_block = "10.0.1.0/24"
#    vpc_id     = var.vpc_id
#    tags = {
#      Name  = "subnet1"
#      env   = "dev"
#      owner = "config2"
#    }
#}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}
