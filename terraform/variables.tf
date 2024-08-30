variable "engine" {
  
}
variable "db_storage" {
  
}
variable "db_engine_version" {
  
}
variable "db_instance_class" {
  
}
variable "db_identifier" {
  
}

variable "ssh_key" {
  type = string
}
variable "access_ip" {
  type = string
}

variable "db_name" {
  type = string
  
}

variable "dbuser" {
  type      = string
  sensitive = true
}

variable "dbpassword" {
  type      = string
  sensitive = true
}
variable "acm_certificate_arn" {
  type = string
}

# compute

variable "min_size_basion" {
  type = number
}
variable "max_size_basion" {
  type = number
}
variable "desired_capacity_basion" {
  type = number
}
variable "min_size" {
  type = number
}
variable "max_size" {
  type = number
}
variable "desired_capacity" {
  type = number
}

# Loadbalancing

variable "tg_port" {
  
}
variable "tg_protocol" {
  
}
variable "listener_port" {
  
}
variable "listener_protocol" {
  
}
variable "azs" {
  
}
variable "listener_port_https" {
  
}
variable "listener_protocol_https" {
  
}

#Networking

variable "from_port_ssh" {
  
}
variable "to_port_ssh" {
  
}
variable "from_port_http" {
  
}
variable "to_port_http" {
  
}
variable "from_port_https" {
  
}
variable "to_port_https" {
  
}
variable "from_port_db" {
  
}
variable "to_port_db" {
  
}
variable "from_port_egress" {
  
}
variable "to_port_egress" {
  
}
variable "protocol_ingress" {
  
}
variable "protocol_egress" {
  
}
variable "cidr_block" {
  
}
variable "private_sn_count" {
  
}
variable "public_sn_count" {
  
}