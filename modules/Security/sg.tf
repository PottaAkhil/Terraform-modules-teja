
resource "aws_security_group" "sg" {
  vpc_id = "${data.terraform_remote_state.network.outputs.vpc_id}"
  dynamic "ingress" {
    for_each = var.rules
    content {
      from_port = ingress.value["port"]
      to_port = ingress.value["port"]      
      description = ingress.value["description"]
      protocol = ingress.value["proto"]
      cidr_blocks = ingress.value["cidr_blocks"]
    }
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = merge(
    tomap({
      Name = "${var.environment_tag[var.environment]}-${var.region_tag[var.aws_region]}--sg"
  }), var.resource_tags)

}