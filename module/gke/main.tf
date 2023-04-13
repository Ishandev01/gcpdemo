resource "google_container_cluster" "primary" {
  name     = "my-demogke-cluster"
  location = "asia-south1"
  remove_default_node_pool = true
  initial_node_count       = 1
  network                  = var.vpccluster
  subnetwork               = var.subnetworkcluster

  addons_config {
    http_load_balancing {
      disabled = true
    }
    horizontal_pod_autoscaling {
      disabled = false
    }
  }
  release_channel {
    channel = "REGULAR"
  }
  workload_identity_config {
    workload_pool = "githubdemo-383406.svc.id.goog"
  }
   private_cluster_config {
    enable_private_nodes    = true
    enable_private_endpoint = false
    master_ipv4_cidr_block  = "10.0.20.0/28"
  }
}

resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = "my-node-pool"
  location   = "asia-south1"
  cluster    = google_container_cluster.primary.name
  node_count = 2
  max_pods_per_node = 10

   autoscaling {
    max_node_count = 3
    min_node_count = 1
  }

  management {
    auto_repair  = true
    auto_upgrade = true
  }

  node_config {
    preemptible  = true
    machine_type = "e2-medium"
    tags = ["mydemo-cluster"]

    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    service_account = google_service_account.cicdgit.email
    oauth_scopes    = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}