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
  description = "Name of the KMS key ring"
}

variable "key_location" {
  type        = string
  default     = "us-east1"
  description = "KMS key ring location (default - us-east1)"
}

variable "create_key_ring" {
  type        = string
  default     = true
  description = "Set based on whether the key ring should be created"
}
