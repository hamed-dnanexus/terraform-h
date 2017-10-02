#
# DO NOT DELETE THESE LINES!
#
# Your AMI ID is:
#
#     ami-d651b8ac
#
# Your subnet ID is:
#
#     subnet-9d9493c7
#
# Your security group ID is:
#
#     sg-2788a154
#
# Your Identity is:
#
#     NWI-vault-gopher
#

provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.AWS_REGION}"
}

resource "aws_instance" "web" {
  count = 2
  ami                    = "ami-d651b8ac"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-9d9493c7"
  vpc_security_group_ids = ["sg-2788a154"]

  tags {
    Name       = "Hamed.${count.index}"
    "Env" = "learning"
    "Identity" = "NWI-vault-gopher"
  }
}
