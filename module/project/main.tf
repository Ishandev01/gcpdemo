resource "google_service_account" "service_account" {
  account_id   = var.gcp_service_account_name
  display_name = var.gcp_service_account
  project      = "githubdemo-383406"
  }

resource "google_project_service" "service_account" {
  for_each = toset([    
    "container.googleapis.com",
    "servicenetworking.googleapis.com",
  ])
  service = each.key

  project = "githubdemo-383406"
}
resource "google_service_account_iam_member" "admin-account-iam" {
  service_account_id = google_service_account.service_account.name
  for_each = toset([
    "roles/roles/container.developer",
    "roles/owner",
  ])
  role               = each.key
  member             = "serviceAccount:${google_service_account.service_account.email}"
}
