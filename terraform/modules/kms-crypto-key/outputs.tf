output "id" {
  value       = google_kms_crypto_key.primary.id
  description = "ID of the KMS crypto key"
}

output "name" {
  value       = google_kms_crypto_key.primary.name
  description = "Name of the KMS crypto key"
}
