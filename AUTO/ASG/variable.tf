variable "name" {
    type = string
}
variable "max_size" {
    type = number
}
variable "min_size" {
    type = number
}
variable "desired_capacity" {
    type = number
}
variable "vpc_zone_identifier" {
    type = list(string)
}
variable "id" {
    type = string 
}
variable region {
    type = string
}

