provider "aws" {
  region     = "us-east-1"
}

provider "google" {
  project     = var.gcp_project_id
  region      = "us-central1"
  credentials = file(var.gcp_credentials_file)
}
