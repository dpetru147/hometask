output "id" {
  value       = google_bigquery_dataset.primary.id
  description = "ID of the BigQuery dataset"
}

output "dataset_id" {
  value       = google_bigquery_dataset.primary.dataset_id
  description = "Name of the BigQuery dataset"
}
