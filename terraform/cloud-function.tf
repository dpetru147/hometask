module "dataset_upload_function" {
  source = "./modules/cloud-function"
  # version  = "1.0.0"
  name                  = "dataset_upload_function"
  env                   = var.env
  service               = var.service
  runtime               = "python311"
  entry_point           = "dataset_upload_function"
  source_archive_bucket = module.cloud_storage_bucket_cloud_function_file_store.name
  source_archive_object = module.dataset_upload_function_file.name
  event_type            = "google.storage.object.finalize"
  event_resource        = module.cloud_storage_bucket_bronze.name
  service_account_email = google_service_account.dataset_upload_function_service_account.email
  env_variables = {
    DATASET_NAME = module.bigquery_dataset_main.dataset_id
  }
  depends_on = [module.dataset_upload_function_file]
}
