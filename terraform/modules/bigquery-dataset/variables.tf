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
  description = "Unique identifier of the BigQuery dataset"
  #   validation {
  #     condition     = length(regexall("^[0-9A-Za-z_]+$", var.name)) > 0
  #     error_message = "var.name must only contain letters, numbers and the underscore character"
  #   }
}

variable "dataset_location" {
  type        = string
  default     = "us-east1"
  description = "Location of the BigQuery dataset"
}
