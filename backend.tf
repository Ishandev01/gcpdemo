terraform {
  backend "gcs" {
    bucket = "gcpdemogit"
    prefix = "env/terraform.tfstate"
  }
}
