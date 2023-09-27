locals {
  wordpress_cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group" "wordpress" {
  name        = "wordpress"
  description = "Allow SSH, HTTP, and HTTPS"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = local.wordpress_cidr_blocks
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = local.wordpress_cidr_blocks
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = local.wordpress_cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = local.wordpress_cidr_blocks
  }
}

resource "aws_security_group_rule" "allow_mysql" {
  type        = "ingress"
  from_port   = 3306
  to_port     = 3306
  protocol    = "tcp"
  cidr_blocks = ["${aws_instance.wordpress.public_ip}/32"]
  security_group_id = tolist(aws_db_instance.wordpress.vpc_security_group_ids)[0]


}