module "vpc" {
source = "./module/networkskeleton/vpc"
vpc_name = var.vpc_name
}
module "subnet" {
source = "./module/networkskeleton/subnets"
vpcnetwork = google_compute_network.vpc.vpc_id
cidr_range = var.cidr_range
region = var.region
}
