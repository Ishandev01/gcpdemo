module "vpc" {
source = "./module/networkskeleton/vpc"
vpc_name = var.vpc_name
}
module "subnet" {
source = "./module/networkskeleton/subnets"
vpcnetwork = module.vpc.vpc_id
pri_subnet_name = var.pri_subnet_name
cidr_range = var.cidr_range
pub_subnet_cidr_block = var.pub_subnet_cidr_block
pub_subnet_name = var.pub_subnet_name
region = var.region
}