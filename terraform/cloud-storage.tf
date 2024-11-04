module "cloud_storage_bucket_bronze" {
  source = "./modules/storage-bucket"
  # version  = "1.0.0"
  name    = "bronze"
  env     = var.env
  service = var.service
}

module "cloud_storage_bucket_cloud_function_file_store" {
  source = "./modules/storage-bucket"
  # version  = "1.0.0"
  name    = "cloud_function_file_store"
  env     = var.env
  service = var.service
}

module "dataset_upload_function_file" {
  source = "./modules/storage-bucket-object"
  # version  = "1.0.0"
  name          = "dataset_upload_function.zip"
  env           = var.env
  service       = var.service
  object_bucket = module.cloud_storage_bucket_cloud_function_file_store.name
  object_source = "${path.module}/../bundle/dataset_upload_function.zip"
}
