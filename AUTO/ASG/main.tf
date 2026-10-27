resource "aws_autoscaling_group" "autoscaling_group" {
    name = var.name
    max_size = var.max_size
    min_size = var.min_size
    desired_capacity = var.desired_capacity
    vpc_zone_identifier = var.vpc_zone_identifier
    launch_template {
        id = var.id
        version = "$Latest"
    }
  
}