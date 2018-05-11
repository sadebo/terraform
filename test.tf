#provider configuration
provider "aws"  {
	region = "us-east-1"

}
# Resource configuration
resource "aws_instance" "sanu" {
	ami = "ami-467ca739"
	instance_type = "t2.micro"
	tags {
	  Name = "My test VM"
	}
}