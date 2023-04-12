module "vpc" {
source = "./module/networkskeleton/vpc"
vpc_name = var.vpc_name
}
module "subnet" {
source = "./module/networkskeleton/subnets"
vpcnetwork = module.vpc.vpc_id
<<<<<<< HEAD
pri_subnet_name = var.pri_subnet_name
=======
>>>>>>> a2a74c93de091713a5c74986a3a76853eb32eea8
cidr_range = var.cidr_range
pub_subnet_cidr_block = var.pub_subnet_cidr_block
pub_subnet_name = var.pub_subnet_name
region = var.region
}
