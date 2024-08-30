variable "bastion_sg" {}
variable "frontend_app_sg" {}
variable "backend_app_sg" {}
variable "private_subnets" {}
variable "public_subnets" {}
variable "key_name" {}
variable "lb_tg_name" {}
variable "lb_tg" {}
variable "min_size_basion" {}
variable "max_size_basion" {}
variable "desired_capacity_basion" {}
variable "min_size" {}
variable "max_size" {}
variable "desired_capacity" {}

variable "ssh_key" {
  type  = string
}

variable "bastion_instance_count" {
  type = number
}

variable "instance_type" {
  type = string
}
