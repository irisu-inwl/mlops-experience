variable "cloud_sql" {
  type = map(string)

  default = {
    database_name = "mlflow"
    instance_name = "mlops-db-sql"
  }
}

variable "network" {
  type = map(string)

  default = {
    vpc_name = "mlops-vpc"
    subnet_name = "mlops-vpc-subnet"
    vpc_access_name = "mlops-vpc-serverless"
  }
}

variable "gcs" {
  type = map(string)
  
  default = {
    bucket_name = "mlops-storage-example"
  }
}

# specified variable

variable "db_user" {
  type = string
  description = "cloud sql username"
}

variable "db_password" {
  type = string
  description = "cloud sql password"
}

variable "project_id" {
  type = string
  description = "gcp project id"
}
