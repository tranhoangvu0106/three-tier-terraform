terraform {
  backend "s3" {
    bucket = "train-s3-demo-1"
    key    = "State-Files/terraform.tfstate"
    region = "ap-southeast-1"
  }
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.11"
    }
  }
}