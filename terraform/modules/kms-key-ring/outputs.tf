output "id" {
  value       = google_kms_key_ring.primary[0].id
  description = "ID of the KMS key ring"
}

output "name" {
  value       = google_kms_key_ring.primary[0].name
  description = "Name of the KMS key ring"
}
