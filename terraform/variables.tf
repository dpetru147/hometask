variable "service" {
  type        = string
  description = "Name of your service"
}

variable "env" {
  type        = string
  description = "Environment Name"
  validation {
    condition     = contains(["main", "prod", "qa", "dev"], var.env)
    error_message = "Env must be 'main', 'prod', 'qa' or 'dev'!"
  }
}

variable "gcp_project" {
  type        = string
  description = "GCP project ID used for deployment"
}

variable "gcp_region" {
  type        = string
  default     = "us-east1"
  description = "GCP region used for deployment (default = us-east1)"
}
