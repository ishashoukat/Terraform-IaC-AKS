Terraform-IaC-AKS

This repository demonstrates how to provision an Azure Kubernetes Service (AKS) cluster using Terraform Infrastructure as Code (IaC).

The project focuses on automating Azure infrastructure deployment using reusable Terraform configuration instead of manually creating resources through the Azure Portal.

Architecture

The project is designed to provision:

Azure Resource Group

Virtual Network (VNet)

Subnet

Azure Kubernetes Service (AKS)

AKS Node Pool

Azure Container Registry (ACR)

AKS and ACR integration

Technologies

Terraform

Microsoft Azure

Azure Kubernetes Service (AKS)

Azure Container Registry (ACR)

Kubernetes

Docker

Azure CLI

Git & GitHub

Project Structure

Terraform-IaC-AKS/
├── main.tf
├── providers.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── .gitignore
└── README.md

Prerequisites

Before using this project, install:

Terraform

Azure CLI

kubectl

Git

Docker

An active Microsoft Azure subscription is also required.

Getting Started

1. Clone the repository

git clone <repository-url>
cd Terraform-IaC-AKS

2. Login to Azure

az login

Verify the active subscription:

az account show

3. Initialize Terraform

terraform init

4. Validate the configuration

terraform validate

5. Preview the infrastructure

terraform plan

6. Deploy the infrastructure

terraform apply

Review the Terraform plan and enter yes to create the infrastructure.

Connect to AKS

After the AKS cluster is deployed, retrieve the Kubernetes credentials:

az aks get-credentials \
  --resource-group <resource-group-name> \
  --name <aks-cluster-name>

Verify the cluster:

kubectl get nodes

Terraform Workflow

Terraform Code
     ↓
terraform init
     ↓
terraform validate
     ↓
terraform plan
     ↓
terraform apply
     ↓
Azure Infrastructure
     ↓
AKS Cluster

Destroy Infrastructure

When the environment is no longer required:

terraform destroy