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
  description = "Name of the Cloud Function"
}

variable "description" {
  type        = string
  default     = null
  description = "Description of the Cloud Function"
}

variable "source_archive_bucket" {
  type        = string
  description = "Name of Cloud Storage bucket where the Cloud Function source code is located"
}

variable "source_archive_object" {
  type        = string
  description = "Name of the Cloud Function source code file"
}

variable "runtime" {
  type        = string
  description = "The function runtime for the Cloud Function"
}

variable "entry_point" {
  type        = string
  description = "Name of the Function in your code that will be called upon activation"
}

variable "event_resource" {
  type        = string
  default     = null
  description = "The type of resource from which to observe events for the Cloud Function"
}

variable "event_type" {
  type        = string
  default     = null
  description = "The type of event to trigger the Cloud Function"
}

variable "service_account_email" {
  type        = string
  description = "The email of the service account that will be authorized to run the Cloud Function"
}

variable "env_variables" {
  type        = map(string)
  default     = {}
  description = "(Optional) Environment variable (key/value)"
}
