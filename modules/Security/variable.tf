variable "vpc_id" {
  type = string
}

variable "rules" {
  type = list(object({
    port = number
    proto = string
    cidr_blocks = list(string)
    description = string
  }))
}

variable "region_tag" {
  type = map(any)
  default = {
    "us-east-1"  = "eu1"
    "ap-south-1" = "ap1"
  }
}

variable "aws_region" {
  type = string
}

variable "environment" {
  type = string
}

variable "environment_tag" {
  type = map(any)
  default = {
    "dev"  = "D"
    "prod" = "P"
  }
}

variable "resource_tags" {
  type = map(string)
}