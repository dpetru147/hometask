variable "service" {
  type        = string
  description = "Name of your service"
}

variable "env" {
  type        = string
  description = "Name of the environment"
  validation {
    condition     = contains(["main", "prod", "qa", "dev"], var.env)
    error_message = "Env must be 'main', 'prod', 'qa' or 'dev'!"
  }
}

variable "name" {
  type        = string
  default     = "main"
  description = "Name of the Cloud Bucket Object"
}

variable "object_bucket" {
  type        = string
  description = "Bucket of the Storage Bucket Object"
}

variable "object_source" {
  type        = string
  description = "Source of the Storage Bucket Object"
}
