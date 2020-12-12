resource "aws_security_group" "web_sg" {
  name        = "web_sg"
  description = "Allow SSH inbound traffic"
  

  ingress {
    description = "SSH from MYIP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    
  }
  
  ingress {
    description = "tomcat acces on 8081 from Anywhere"
    from_port   = 8081
    to_port     = 8081
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "tomcat-sg"
  }
}
