data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "terrafrom-sai"
    key    = "vpc/dev.tfstate"
    region = "us-east-1"
  }
}
