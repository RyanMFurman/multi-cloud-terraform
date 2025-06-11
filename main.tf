module "aws" {
  source          = "./aws"
  aws_region      = var.aws_region
  aws_access_key  = var.aws_access_key
  aws_secret_key  = var.aws_secret_key
}

module "gcp" {
  source               = "./gcp"
  gcp_project_id       = var.gcp_project_id
  gcp_credentials_file = var.gcp_credentials_file
}
