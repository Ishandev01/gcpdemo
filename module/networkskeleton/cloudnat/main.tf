resource "google_compute_router_nat" "nat" {
    name = var.namenat
    router = var.routerid
    region = var.regionnat

    source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
    nat_ip_allocation_option = "MANUAL_ONLY"

    subnetwork {
        name = var.subnetworkname
        source_ip_range_to_nat = ["ALL_IP_RANGES"]
    }
    nat_ips = var.natip
}
resource "google_compute_address" "nat" {
    name = var.nameip
    address_type = "EXTERNAL"
    network_tier = "PREMIUM"
}