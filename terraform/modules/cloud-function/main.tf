resource "google_cloudfunctions_function" "primary" {
  name                  = "${var.service}_${var.env}_${var.name}"
  description           = var.description
  runtime               = var.runtime
  entry_point           = var.entry_point
  source_archive_bucket = var.source_archive_bucket
  source_archive_object = var.source_archive_object
  service_account_email = var.service_account_email
  environment_variables = var.env_variables

  event_trigger {
    event_type = var.event_type
    resource   = var.event_resource
  }
}
