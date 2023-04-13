resource "google_compute_router_nat" "natdemo" {
    name = var.namenat
    router = var.routerid
    region = var.regionnat

    source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
    nat_ip_allocate_option = "MANUAL_ONLY"

    # subnetwork {
    #     name = var.subnetworkname
    #     source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
    # }
    nat_ips = [google_compute_address.nat.self_link]
}
resource "google_compute_address" "nat" {
    name = var.nameip
    address_type = "EXTERNAL"
    network_tier = "PREMIUM"
    region = "asia-south1"
}