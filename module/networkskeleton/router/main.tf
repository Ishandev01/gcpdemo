resource "google_compute_router" "router" {
    name = var.routername
    region = var.regionrouter
    network = var.vpcroute
}
