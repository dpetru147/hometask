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
  description = "Name of the Storage Bucket"
}

variable "bucket_location" {
  type        = string
  default     = "us-east1"
  description = "Location of the Storage Bucket"
}

variable "uniform_bucket_level_access" {
  type        = bool
  default     = true
  description = "Enables uniform bucket-level access access to a bucket"
}
