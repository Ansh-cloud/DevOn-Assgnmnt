resource "aws_instance" "web-devon" {
  ami           = "ami-0db0b3ab7df22e366"
  instance_type = "t2.micro"
  key_name = "ubuntu2020"
  security_groups = ["${aws_security_group.web_sg.name}"]
  user_data = "${file("bootstrap.sh")}"
  tags = {
    Name = "Tomcat"
    Enviromnment = "stage"
  }
}