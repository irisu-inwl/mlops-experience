terraform {
  required_version = ">= 0.13"
  backend "gcs" {
    bucket = var.tfstate_bucket_name
    prefix = "terraform/state"
  }
}