output "pub_subnet_id" {
  value = google_compute_subnetwork.public[*].id
}
output "pri_subnet_id" {
  value = google_compute_subnetwork.private[*].id
}