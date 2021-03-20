resource "google_storage_bucket" "mlops_bucket" {
  name     = var.gcs.bucket_name
  location = "ASIA-NORTHEAST1"

  uniform_bucket_level_access = true
}

data "google_iam_policy" "admin" {
  binding {
    role = "roles/storage.admin"
    members = [
      "serviceAccount:${var.project_id}@appspot.gserviceaccount.com",
      "projectOwner:${var.project_id}",
      "projectEditor:${var.project_id}"
    ]
  }
}

resource "google_storage_bucket_iam_policy" "policy" {
  bucket      = google_storage_bucket.mlops_bucket.name
  policy_data = data.google_iam_policy.admin.policy_data
}
