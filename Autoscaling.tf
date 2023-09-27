# resource "aws_launch_configuration" "wordpress" {
#   name_prefix          = "wordpress-lc-"
#   image_id             = "ami-03a6eaae9938c858c" 
#   instance_type        = "t2.micro" 
#   security_groups      = [aws_security_group.wordpress.id]
#   user_data            = data.template_file.init.rendered
#   key_name            = aws_key_pair.deployer.key_name # Replace with your EC2 key pair name



#   lifecycle {
#     create_before_destroy = true
#   }
# }

# data "template_file" "init" {
#   template = file("wordpressinstall.sh")
# }


# resource "aws_autoscaling_group" "wordpress" {
#   name                 = "wordpress-asg"
#   launch_configuration = aws_launch_configuration.wordpress.name
#   min_size             = 1
#   max_size             = 5
#   desired_capacity     = 2
#   vpc_zone_identifier  = ["subnet-023a5614e777db685"] 

#   target_group_arns = [aws_lb_target_group.wordpress.arn]

#   lifecycle {
#     create_before_destroy = true
#   }
# }
# resource "aws_autoscaling_attachment" "wordpress" {
#   autoscaling_group_name = aws_autoscaling_group.wordpress.name
#   lb_target_group_arn   = aws_lb_target_group.wordpress.arn
# }
