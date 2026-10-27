variable "load_balancer_name" {
    type = string
}
variable "load_balancer_type" {
    type = string
}
variable "security_groups" {
    type = list(string)
}
# variable "subnets" {
#     type = list(string)
# }
variable "internal" {
    type = bool
}

variable "target_group_arn" {
    type = string
}
variable "region" {
    type = string
}
variable "subnet_id_1" {
    type = string
}
variable "subnet_id_2" {
    type = string
}