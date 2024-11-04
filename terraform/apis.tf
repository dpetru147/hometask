resource "google_project_service" "required_apis" {
  for_each = toset([
    "cloudresourcemanager.googleapis.com",
    "storage.googleapis.com",
    "bigquery.googleapis.com"
  ])

  project = var.gcp_project
  service = each.key

  disable_dependent_services = false
  disable_on_destroy         = false
}
