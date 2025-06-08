# 🌐 Multi-Cloud Terraform Infrastructure

This repository is designed to help you provision and manage infrastructure across **multiple cloud providers** — specifically **AWS** and **Google Cloud Platform (GCP)** — using [Terraform](https://www.terraform.io/). It's perfect for developers, DevOps engineers, and cloud architects looking for repeatable, version-controlled infrastructure-as-code (IaC).

---

## ✅ Features

- ✅ Multi-Cloud Infrastructure: Provision and manage resources on AWS and GCP.
- ✅ Modular Design: Easily reuse and extend cloud modules.
- ✅ Environment Support: Supports multiple environments (e.g., dev, staging, prod).
- ✅ State Management: Remote backends configured for shared state.
- ✅ Secrets/Sensitive Files Ignored: Uses `.gitignore` to protect credentials and state files.

---

## 🔧 Prerequisites

Before you get started, you need to have the following tools installed:

- Terraform: https://www.terraform.io/downloads.html
- AWS CLI: https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html
- Google Cloud SDK: https://cloud.google.com/sdk/docs/install
- Configured credentials for both AWS and GCP:
  - AWS: `aws configure`
  - GCP: `gcloud auth application-default login`

---

## 🚀 Quick Start Guide

### 1. Clone the Repository

```bash
git clone https://github.com/RyanMFurman/multi-cloud-terraform.git
cd multi-cloud-terraform
```

### 2. Set Up Environment Variables or `.tfvars`

```bash
cp terraform.tfvars.example terraform.tfvars
```

Edit `terraform.tfvars` with your values:

```hcl
aws_region = "us-west-2"
gcp_project_id = "your-gcp-project-id"
gcp_region = "us-central1"
```

### 3. Navigate to Environment

```bash
cd environments/dev
```

### 4. Initialize Terraform

```bash
terraform init
```

### 5. Preview Changes

```bash
terraform plan
```

### 6. Apply Changes

```bash
terraform apply
```

### 7. Destroy Resources (when needed)

```bash
terraform destroy
```

---

## 📂 Customize Resources

Add or edit resources in `aws/main.tf` or `gcp/main.tf`. Then rerun:

```bash
terraform plan
terraform apply
```

---

## 🔐 Security

`.gitignore` protects secrets and Terraform state:

```
.terraform/
*.tfstate
*.tfvars
*.tfplan
```

Never commit secret files or keys.

---

## 🤝 Contributing

Pull requests are welcome. Submit improvements or new cloud modules!

---

## 📝 License

MIT License

---

## 📬 Contact

Ryan Furman  
rfurman3803@gmail.com  
https://github.com/RyanMFurman

---

## 💡 Future Enhancements

- [ ] Add Azure cloud support
- [ ] Include CI/CD for Terraform with GitHub Actions
- [ ] Add cost estimation tools

## License

MIT License
