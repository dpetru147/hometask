terraform {
  backend "gcs" {
    bucket = "tf-state-hometask-147"
    prefix = "terraform"
  }
}
