resource "aws_security_group" "instance" {
    name = "terraform-example-instance"

    ingress {
      from_port   = "${variable.server_port}"
      to_port     = "${variable.server_port}"
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      }
}  