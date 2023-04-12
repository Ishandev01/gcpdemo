resource "google_compute_subnetwork" "private" {
<<<<<<< HEAD
     count = length(var.cidr_range)
     name = var.pri_subnet_name[count.index]
     ip_cidr_range = var.cidr_range[count.index]
=======
    name = "private"
     ip_cidr_range = var.cidr_range
>>>>>>> a2a74c93de091713a5c74986a3a76853eb32eea8
     region = var.region
     network = var.vpcnetwork
     private_ip_google_access = true
}
<<<<<<< HEAD
resource "google_compute_subnetwork" "public" {
    network = var.vpcnetwork
    count = length(var.pub_subnet_cidr_block)
    ip_cidr_range = var.pub_subnet_cidr_block[count.index]
    name = var.pub_subnet_name[count.index]
    region = var.regionpub
}
=======
>>>>>>> a2a74c93de091713a5c74986a3a76853eb32eea8
