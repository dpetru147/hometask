resource "google_bigquery_dataset" "primary" {
  dataset_id = "${var.service}_${var.env}_${var.name}"
  location   = var.dataset_location
  lifecycle {
    prevent_destroy = true
  }
}
