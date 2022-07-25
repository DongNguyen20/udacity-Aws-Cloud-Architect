# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
	region = "us-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity-T2" {
	ami = "ami-0cff7528ff583bf9a" #Amazon Linux 2 Kernel 5.10 AMI 2.0.20220606.1 x86_64 HVM gp2
	instance_type = "t2.micro"
	count = 4
	tags = {
		"name" = "Udacity Projec 2"
	}
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity-M4" {
	ami = "ami-0cff7528ff583bf9a" #Amazon Linux 2 Kernel 5.10 AMI 2.0.20220606.1 x86_64 HVM gp2
	instance_type = "m4.large"
	count = 2
	tags = {
		"name" = "Udacity Project 2"
	}
}