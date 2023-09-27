resource "aws_instance" "wordpress" {
  ami           = "ami-03a6eaae9938c858c" # This is the Amazon Linux 2 LTS AMI. Update if necessary.
  instance_type = "t2.micro"
  key_name      = aws_key_pair.deployer.key_name
  user_data = data.template_file.init.rendered
  vpc_security_group_ids = [aws_security_group.wordpress.id]
  tags = {
    Name = "TerraformWordPress"
  }
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = file("/home/ascharles/.ssh/id_rsa.pub")
}

data "template_file" "init" {
  template = file("wordpressinstall.sh")
}