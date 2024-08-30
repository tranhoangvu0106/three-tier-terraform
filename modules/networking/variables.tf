variable "vpc_cidr" {
  type = string
}

variable "public_sn_count" {
  type = number
}

variable "private_sn_count" {
  type = number
}

variable "access_ip" {
  type = string
}

variable "db_subnet_group" {
  type = bool
}

variable "availabilityzone" {}

variable "azs" {}

variable "to_port_ssh" {
  
}
variable "from_port_ssh" {
  
}
variable "protocol_ingress" {
  
}
variable "to_port_egress" {
  
}
variable "from_port_egress" {
  
}
variable "protocol_egress" {
  
}
variable "to_port_http" {
  
}
variable "from_port_http" {
  
}
variable "to_port_https" {
  
}
variable "from_port_https" {
  
}
variable "from_port_db" {
  
}
variable "to_port_db" {
  
}
variable "cidr_block" {
  
}