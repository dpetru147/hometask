terraform {
  required_version = ">= 0.15.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 6.9.0"
    }
  }
}


provider "google" {
  project = var.gcp_project
  region  = var.gcp_region
  default_labels = {
    service     = var.service
    environment = var.env
  }
}

resource "google_project_service" "kms" {
  project = var.gcp_project
  service = "cloudkms.googleapis.com"
}
