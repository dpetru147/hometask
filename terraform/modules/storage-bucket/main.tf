#tfsec:ignore:google-storage-bucket-encryption-customer-key
resource "google_storage_bucket" "primary" {
  name                        = "${var.service}_${var.env}_${var.name}"
  location                    = var.bucket_location
  force_destroy               = true
  uniform_bucket_level_access = var.uniform_bucket_level_access
}
