resource "google_kms_crypto_key" "primary" {
  name     = "${var.service}_${var.env}_${var.name}"
  key_ring = var.key_ring
}
