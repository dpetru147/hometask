output "id" {
  value       = google_storage_bucket_object.primary.id
  description = "ID of the bucket object"
}

output "name" {
  value       = google_storage_bucket_object.primary.name
  description = "Name of the bucket object"
}
