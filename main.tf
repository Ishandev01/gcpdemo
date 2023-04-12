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
regionpub = var.regionpub
}

module "router" {
source = "./module/networkskeleton/router"
vpcroute = module.vpc.vpc_id
regionrouter = var.regionrouter
routername = var.routername
}

module "nat" {
source = "./module/networkskeleton/cloudnat"
namenat = var.namenat
routerid = module.router.router
regionnat =var.regionnat
subnetworkname =module.subnet.pri_subnet_id
natip = var.natip
nameip = var.nameip
}