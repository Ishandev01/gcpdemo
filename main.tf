resource "google_compute_network" "vpc" {
name = "test-demo"
auto_create_subnetworks = false
delete_default_routes_on_create = true
mtu = 1460
}
