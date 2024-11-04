terraform {
  required_version = ">= 0.15.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 6.9.0"
    }
  }
}
