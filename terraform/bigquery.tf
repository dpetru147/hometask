module "bigquery_dataset_main" {
  source = "./modules/bigquery-dataset"
  #   version  = "1.0.0"
  name    = "dataset"
  env     = var.env
  service = var.service
}
