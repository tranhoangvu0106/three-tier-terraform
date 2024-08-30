
provider "aws" {
  region = local.location
}

locals {
  instance_type = "t3.small"
  location      = "ap-southeast-1"
  environment   = "dev"
  vpc_cidr      = "10.123.0.0/16"
}

module "networking" {
  source           = "../modules/networking"
  vpc_cidr         = local.vpc_cidr
  access_ip        = var.access_ip
  public_sn_count  = var.public_sn_count
  private_sn_count = var.private_sn_count
  db_subnet_group  = true
  availabilityzone = "ap-southeast-1"
  azs              = var.azs
  from_port_ssh =  var.from_port_ssh
  to_port_ssh = var.to_port_ssh
  from_port_http = var.from_port_http
  to_port_http = var.to_port_http
  from_port_https = var.from_port_https
  to_port_https = var.to_port_https
  from_port_db = var.from_port_db
  to_port_db = var.to_port_db
  protocol_ingress = var.protocol_ingress
  protocol_egress = var.protocol_egress
  to_port_egress = var.to_port_egress
  from_port_egress = var.from_port_egress
  cidr_block = var.cidr_block
}

module "compute" {
  source                 = "../modules/compute"
  frontend_app_sg        = module.networking.frontend_app_sg
  backend_app_sg         = module.networking.backend_app_sg
  bastion_sg             = module.networking.bastion_sg
  public_subnets         = module.networking.public_subnets
  private_subnets        = module.networking.private_subnets
  bastion_instance_count = 1
  instance_type          = local.instance_type
  key_name               = "Three-Tier-Terraform"
  ssh_key                = "Three-Tier-Terraform"
  lb_tg_name             = module.loadbalancing.lb_tg_name
  lb_tg                  = module.loadbalancing.lb_tg
  min_size = var.min_size
  max_size = var.max_size
  desired_capacity = var.desired_capacity
  min_size_basion = var.min_size_basion
  max_size_basion = var.max_size_basion
  desired_capacity_basion = var.desired_capacity_basion
}

module "database" {
  source               = "../modules/database"
  db_storage           = var.db_storage
  db_engine_version    = var.db_engine_version
  db_instance_class    = var.db_instance_class
  db_name              = var.db_name
  dbuser               = var.dbuser
  dbpassword           = var.dbpassword
  db_identifier        = var.db_identifier
  skip_db_snapshot     = true
  rds_sg               = module.networking.rds_sg
  db_subnet_group_name = module.networking.db_subnet_group_name[0]
  engine               = var.engine
}

module "loadbalancing" {
  source            = "../modules/loadbalancing"
  lb_sg             = module.networking.lb_sg
  public_subnets    = module.networking.public_subnets
  tg_port           = var.tg_port
  tg_protocol       = var.tg_protocol
  vpc_id            = module.networking.vpc_id
  app_asg           = module.compute.app_asg
  listener_port     = var.listener_port
  listener_protocol = var.listener_protocol
  azs               = var.azs
  listener_port_https = var.listener_port_https
  listener_protocol_https = var.listener_protocol_https
  acm_certificate_arn = var.acm_certificate_arn
}