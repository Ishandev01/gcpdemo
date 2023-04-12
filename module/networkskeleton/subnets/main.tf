resource "google_compute_subnetwork" "private" {
    name = "private"
     ip_cidr_range = var.cidr_range
     region = var.region
     network = var.vpcnetwork
     private_ip_google_access = true
}
