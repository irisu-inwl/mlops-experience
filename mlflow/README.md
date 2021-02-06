### Deployment in GCP

#### Preliminary

1. Installing Terraform
1. Installing gcloud command
1. Creating Google App Engine default service

#### Terraform

1. Create tfstate bucket

```
gsutil mb -b on -l asia-northeast1 gs://terraform-state-mlops-experiment
```

1. Move terraform directory.

```
cd terraform
```

1. Setting tfvars file

```
vi terraform.tfvars
```

```
$ cat terraform.tfvars

db_user=[your db username]
db_password=[your db password]
project_id=[your gcp's project id]
```

1. Deployment via terraform

```
terraform init
terraform plan
terraform apply
```

####
