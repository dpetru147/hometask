resource "google_storage_bucket_object" "primary" {
  name   = "${var.service}_${var.env}_${var.name}"
  bucket = var.object_bucket
  source = var.object_source
}
