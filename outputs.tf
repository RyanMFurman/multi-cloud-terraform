output "aws_public_ip" {
  value = module.aws.aws_public_ip
}

output "gcp_public_ip" {
  value = module.gcp.gcp_public_ip
}
