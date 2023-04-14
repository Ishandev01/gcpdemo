resource "google_compute_subnetwork" "private" {
     count = length(var.cidr_range)
     name = var.pri_subnet_name[count.index]
     ip_cidr_range = var.cidr_range[count.index]
     region = var.region
     network = var.vpcnetwork
     private_ip_google_access = true

    secondary_ip_range = { 
        count = 2
       ip_cidr_range = var.podrange[count.index]
       range_name = var.podrangename [count.index]
     }
    # secondary_ip_range = {
    #     ip_cidr_range = var.servicerange
    #     range_name = var.servicename
    # }
}

resource "google_compute_subnetwork" "public" {
    network = var.vpcnetwork
    count = length(var.pub_subnet_cidr_block)
    ip_cidr_range = var.pub_subnet_cidr_block[count.index]
    name = var.pub_subnet_name[count.index]
    region = var.regionpub
}
