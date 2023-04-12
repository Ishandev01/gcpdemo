module "vpc" {
source = "../module/vpc"
vpc_name = var.vpc_name
}
module "subnet" {
source = "../module/subnet"
cidr_range = var.cidr_range
region = var.region
}