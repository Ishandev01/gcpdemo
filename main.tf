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
pod_range = var.pod_range
podrangename = var.podrangename
# servicerange = var.servicerange
# servicename = var.servicename
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
routerid = module.router.router_name
regionnat =var.regionnat
# subnetworkname =module.subnet.pub_subnet_id[0]
natip = var.natip
nameip = var.nameip
depends_on = [
  module.router
]
}

module "gke" {
source = "./module/gke"
vpccluster = module.vpc.vpc_id
subnetworkcluster = module.subnet.pri_subnet_id[0]
gsa_email = module.serviceaccount.service
}

module "serviceaccount" {
  source = "./module/project"
  gcp_service_account_name = var.gcp_service_account_name
  gcp_service_account = var.gcp_service_account
}