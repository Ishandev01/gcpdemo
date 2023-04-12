module "vpc" {
source = "../module/networkskeleton/vpc"
vpc_name = var.vpc_name
}
module "subnet" {
source = "../module/networkskeleton/subnet"
cidr_range = var.cidr_range
region = var.region
}
