resource "aws_instance" "jenkins" {
  ami           = "ami-00ca570c1b6d79f36"
  instance_type = "t2.micro"
  key_name = "moba-key"
  user_data = file("jenkins.sh")
  security_groups = ["sunni_secure"]

  tags = {
    Name = "jenkins"
  }
}