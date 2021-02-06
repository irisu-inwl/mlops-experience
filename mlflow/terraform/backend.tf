terraform {
  required_version = ">= 0.13"
  backend "gcs" {
    bucket = "terraform-state-mlops-experiment"
    prefix = "terraform/state"
  }
}