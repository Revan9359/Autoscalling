resource "aws_lb" "lb1" {
    name               = var.load_balancer_name
    internal           = false
    load_balancer_type = var.load_balancer_type
    security_groups    = var.security_groups
    subnets            = [
        var.subnet_id_1,
        var.subnet_id_2
    ]
}
resource "aws_lb_listener" "listener1" {
    load_balancer_arn = aws_lb.lb1.arn
    port              = 80
    protocol          = "HTTP"
  
    default_action {
        type             = "forward"
        target_group_arn = var.target_group_arn
    }
}