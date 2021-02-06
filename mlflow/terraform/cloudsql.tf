resource "google_sql_database_instance" "private_instance" {
  database_version = "MYSQL_8_0"

  project = var.project_id
  name   = var.cloud_sql.instance_name
  region = "asia-northeast1"

  depends_on = [google_service_networking_connection.private_vpc_connection]

  settings {
    tier = "db-f1-micro"
    ip_configuration {
      ipv4_enabled    = false
      private_network = google_compute_network.mlops_vpc.id
    }

    disk_autoresize = true
    disk_size = "10"
    disk_type = "PD_SSD"
  }
}

resource "google_sql_database" "database" {
  name     = var.cloud_sql.database_name
  instance = google_sql_database_instance.private_instance.name
}

resource "google_sql_user" "users" {
  name     = var.db_user
  instance = google_sql_database_instance.private_instance.name
  password = var.db_password
}