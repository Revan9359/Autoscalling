resource "aws_lb_target_group" "tg1" {
    target_type = var.target_type
    name = var.target_group_name
    protocol = var.protocol
    port = var.port
    ip_address_type = var.ip_address_type
    vpc_id = var.vpc_id

}
