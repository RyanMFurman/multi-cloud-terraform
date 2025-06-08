# multi-cloud-terraform

This repository contains Terraform code and configurations to manage infrastructure across multiple cloud providers, including AWS and Google Cloud Platform (GCP).

## Features

- Multi-cloud support (AWS, GCP)
- Modular Terraform configurations
- Infrastructure-as-Code for provisioning cloud resources
- Secure management using `.gitignore` to exclude sensitive files

## Getting Started

### Prerequisites

- Terraform installed (version X.X or higher)
- AWS CLI configured (for AWS deployments)
- GCP SDK configured (for Google Cloud deployments)

### Usage

1. Clone the repository:
   git clone https://github.com/RyanMFurman/multi-cloud-terraform.git
   cd multi-cloud-terraform

2. Initialize Terraform:
   terraform init

3. Review the configuration files and update variables as needed.

4. Plan your infrastructure changes:
   terraform plan

5. Apply the changes:
   terraform apply

## .gitignore

Sensitive files such as Terraform state files, logs, and provider credentials are excluded from this repository by the `.gitignore` file.

## Contributing

Contributions are welcome! Please open issues or submit pull requests for improvements.

## License

MIT License
