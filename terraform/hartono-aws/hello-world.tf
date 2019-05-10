provider "aws" {
  access_key = "xxxxxxxxxxxxxxxx"
  secret_key = "xxxxxxxxxxxxxxxx"
  region     = "ap-southeast-1"
}

resource "aws_instance" "hartono-terraform-test-create-ec2-instance" {
    ami             = "ami-0dad20bd1b9c8c004"
    instance_type   = "t3.nano"
    key_name        = "my-super-secret-key-pair-pem-file"
    vpc_security_group_ids = [
        "my-super-secure-security-group"
    ]

    tags = {
      Name = "hartono-terraform-test"
      Owner = "hartono"
      Temporary = "yes, must delete after use"
    }
}
