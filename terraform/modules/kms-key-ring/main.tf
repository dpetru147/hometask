resource "google_kms_key_ring" "primary" {
  count    = var.create_key_ring ? 1 : 0
  name     = "${var.service}_${var.env}_${var.name}"
  location = var.key_location
}
