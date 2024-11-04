output "id" {
  value       = google_cloudfunctions_function.primary.id
  description = "ID of the function"
}

output "name" {
  value       = google_cloudfunctions_function.primary.name
  description = "Name of the function"
}

output "service_account_email" {
  value       = google_cloudfunctions_function.primary.service_account_email
  description = "email of the function"
}
