# Database
engine     = "mysql"
db_storage = 10
db_engine_version = "8.0"
db_instance_class = "db.t3.micro"
db_identifier = "three-tier-db"
dbuser     = "userdevops"
dbpassword = "passworddevops"
db_name    = "databasedevops"
acm_certificate_arn = "arn:aws:acm:ap-southeast-1:851725363863:certificate/d1550dea-7f2d-49cf-9682-06bb7c7233a5"

#Compute

min_size = 2
max_size = 3
desired_capacity = 2
min_size_basion = 1
max_size_basion = 1
desired_capacity_basion = 1

#Loadbalancing

tg_port = 80
tg_protocol = "HTTP"
listener_port = 80
listener_protocol = "HTTP"
azs = 2
listener_port_https = "443"
listener_protocol_https = "HTTPS"

#Networking

from_port_db = 3306
to_port_db = 3306
from_port_ssh = 22
to_port_ssh = 22
from_port_http = 80
to_port_http = 80
from_port_https = 443
to_port_https = 443
from_port_egress = 0
to_port_egress = 0
protocol_ingress = "tcp"
protocol_egress = "-1"
cidr_block = "0.0.0.0/0"
private_sn_count = 2
public_sn_count = 2
