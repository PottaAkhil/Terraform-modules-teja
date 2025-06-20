data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  owners = ["amazon"]
}

resource "aws_instance" "ec2_instance" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id     = "${data.terraform_remote_state.network.outputs.subnet_ids[0]}"
  vpc_security_group_ids = ["${data.terraform_remote_state.sg.outputs.sg-ec2}"]
  tags = {
    Name = "dev-ec2"
  }
}
