# resource "aws_lb" "wordpress" {
#   name               = "wordpress-lb"
#   internal           = false
#   load_balancer_type = "application"
#   security_groups    = [aws_security_group.wordpress.id]
#   subnets            = ["subnet-023a5614e777db685", aws_subnet.subnet_2.id ] # Replace with your subnet IDs

#   enable_deletion_protection = false
# }

# resource "aws_lb_target_group" "wordpress" {
#   name     = "wordpress-tg"
#   port     = 80
#   protocol = "HTTP"
#   vpc_id   = "vpc-0dcc725a5d66f9535"
# }

# resource "aws_lb_listener" "front_end" {
#   load_balancer_arn = aws_lb.wordpress.arn
#   port              = "80"
#   protocol          = "HTTP"

#   default_action {
#     type             = "forward"
#     target_group_arn = aws_lb_target_group.wordpress.arn
#   }
# }
