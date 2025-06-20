vpc_cidr = "10.0.0.0/16"

subnet_id_public = ["10.0.4.0/24", "10.0.5.0/25", "10.0.6.0/26"]

availability_zone = ["us-east-1a", "us-east-1b", "us-east-1c"]

subnet_id_private = ["10.0.1.0/26", "10.0.2.0/26", "10.0.3.0/26"]

aws_region = "us-east-1"

environment = "dev"
resource_tags = {
  application = "pf2"
  email       = "p.akhil.0097@gmail.com"
}