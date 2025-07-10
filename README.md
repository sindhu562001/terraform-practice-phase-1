# Terraform Infrastructure Project: Modular VPC, GKE, and Storage with Remote State & Workspaces

This repository contains a modular, production-ready Terraform infrastructure setup on Google Cloud Platform (GCP).

---

## ✅ Overview
- **Modular Design**: All infrastructure components are built as reusable modules.
- **VPC Usage Project**: Uses the modules to deploy a fully connected environment (VPC, GKE, and Storage).
- **Remote State Storage**: Uses GCS Bucket for remote state storage (backend).
- **Workspaces for Environments**: Supports multiple environments (`dev`, `prod`) using Terraform Workspaces.

---

## ✅ Project Structure
```plaintext
modules/            → Reusable modules (VPC, GKE, Storage Bucket)
storage_bucket/     → Creates GCS Bucket for remote state storage (separate project)
vpc_usage/          → Main project that uses all modules, manages environments and state


## ✅ Directory Structure
```plaintext
terraform-infra-project/
├── modules/                                # Reusable Terraform modules
│   ├── vpc/                                # VPC Module
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── gke/                                # GKE Module
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── storage/                            # Storage Bucket Module
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
├── storage_bucket/                         # Standalone project for bucket creation
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── vpc_usage/                              # Main project using modules & remote backend
│   ├── main.tf                             # Calls VPC, GKE, Storage modules
│   ├── terraform-dev.tfvars                # Dev environment variables
│   ├── terraform-prod.tfvars               # Prod environment variables
│   ├── backend.tf                          # Backend block (empty, backend config passed externally)
│   ├── backend-dev.tfbackend               # Backend config for dev
│   └── backend-prod.tfbackend              # Backend config for prod
│
└── README.md                               # This README


