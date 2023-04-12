resource "google_compute_subnetwork" "private" {
    name = "private"
     ip_cidr_range = "var.cidr_range"
     region = "var.region"
     network = google_compute_network.vpc.id
     private_ip_google_access = true
}