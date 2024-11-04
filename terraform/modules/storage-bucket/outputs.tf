output "id" {
  value       = google_storage_bucket.primary.id
  description = "ID of the bucket"
}

output "name" {
  value       = google_storage_bucket.primary.name
  description = "Name of the bucket"
}
