resource "google_project_service" "service_account" {
  for_each = toset([    
    "compute.googleapis.com",
    "servicenetworking.googleapis.com",
    "serviceusage.googleapis.com"
  ])
  service = each.key

  project            = "githubdemo-383406"
  disable_on_destroy = false
  disable_dependent_services = true
}


resource "google_compute_network" "vpc" {
name = "test-demo"
auto_create_subnetworks = false
delete_default_routes_on_create = true
mtu = 1460
}
