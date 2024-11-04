resource "google_storage_bucket_iam_member" "function_file_bucket_iam" {
  bucket = module.cloud_storage_bucket_cloud_function_file_store.name
  role   = "roles/storage.objectViewer"
  member = "serviceAccount:${module.dataset_upload_function.service_account_email}"
}

resource "google_storage_bucket_iam_member" "bronze_bucket_iam" {
  bucket = module.cloud_storage_bucket_bronze.name
  role   = "roles/storage.objectViewer"
  member = "serviceAccount:${module.dataset_upload_function.service_account_email}"
}

resource "google_service_account" "dataset_upload_function_service_account" {
  account_id = "dataset-upload-function-sa"
}

resource "google_bigquery_dataset_iam_member" "function_permissions" {
  project    = var.gcp_project
  dataset_id = module.bigquery_dataset_main.dataset_id
  role       = "roles/bigquery.dataEditor"
  member     = "serviceAccount:${google_service_account.dataset_upload_function_service_account.email}"
}

resource "google_project_iam_member" "function_job_permissions" {
  project = var.gcp_project
  role    = "roles/bigquery.jobUser"
  member  = "serviceAccount:${google_service_account.dataset_upload_function_service_account.email}"
}
