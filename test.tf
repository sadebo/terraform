#provider configuration
provider "aws"  {
	region = "us-east-1"

}
# Resource configuration
resource "aws_instance" "sanu" {
	ami                     = "ami-43a15f3e"
	instance_type           = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.instance.id}"] 

  user_data = <<EOF
  #!/bin/bash
  echo "Hello World" > index.html
  nohup busybox httpd -f -p "${var.server_port}" &
              EOF
  tags {
	  Name = "My test VM"
	}
}

