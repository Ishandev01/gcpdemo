# resource "google_service_account" "service_account" {
#   account_id   = var.gcp_service_account_name
#   display_name = var.gcp_service_account_name
#   project      = "githubdemo-383406"
# }

# resource "google_project_service" "service_account" {
#   for_each = toset([    
#     "container.googleapis.com",
#     "servicenetworking.googleapis.com",
#   ])
#   service = each.key

#   project = "githubdemo-383406"
# }