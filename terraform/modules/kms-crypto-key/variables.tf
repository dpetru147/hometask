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
  description = "Name of the KMS crypto key"
}

variable "key_ring" {
  type        = string
  description = "KMS key ring ID for KMS crypto key"
}
