provider "aws" {
region = "us-east-2"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-0100e595e1cc1ff7f"
instance_type = "t2.medium"
key_name = "pavankey"
vpc_security_group_ids = ["sg-09fedc86846dce45d"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "tomcat-1", "tomcat-2", "Monitoring server"]
}
