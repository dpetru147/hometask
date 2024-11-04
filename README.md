# Hometask

## Assumptions

- Table name is a directory name in which CSV file is stored in a bucket.
- Data does not require deduplication.
- Schema for existing table does not evolve.

## ETL Job

- Add CSV file to bronze bucket.
- To create a new table or append to an existing table - uploaded CSV file must be in a directory where directory name is table name.
- CSV files not in a folder will be skipped.

## Setup

run  ``` make install ``` to install local env and dependancies.

to run terraform locally:

- adjust ``` backend.tf ``` and ``` common.tfvars ```
- source credentials through gcloud: ``` gcloud auth application-default login ```
- run ``` make tf-plan ``` and ``` make tf-apply ```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 6.9.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | >= 6.9.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_bigquery_dataset_main"></a> [bigquery\_dataset\_main](#module\_bigquery\_dataset\_main) | ./modules/bigquery-dataset | n/a |
| <a name="module_cloud_storage_bucket_bronze"></a> [cloud\_storage\_bucket\_bronze](#module\_cloud\_storage\_bucket\_bronze) | ./modules/storage-bucket | n/a |
| <a name="module_cloud_storage_bucket_cloud_function_file_store"></a> [cloud\_storage\_bucket\_cloud\_function\_file\_store](#module\_cloud\_storage\_bucket\_cloud\_function\_file\_store) | ./modules/storage-bucket | n/a |
| <a name="module_dataset_upload_function"></a> [dataset\_upload\_function](#module\_dataset\_upload\_function) | ./modules/cloud-function | n/a |
| <a name="module_dataset_upload_function_file"></a> [dataset\_upload\_function\_file](#module\_dataset\_upload\_function\_file) | ./modules/storage-bucket-object | n/a |

## Resources

| Name | Type |
|------|------|
| [google_bigquery_dataset_iam_member.function_permissions](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/bigquery_dataset_iam_member) | resource |
| [google_project_iam_member.function_job_permissions](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member) | resource |
| [google_project_service.kms](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_service) | resource |
| [google_project_service.required_apis](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_service) | resource |
| [google_service_account.dataset_upload_function_service_account](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account) | resource |
| [google_storage_bucket_iam_member.bronze_bucket_iam](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_iam_member) | resource |
| [google_storage_bucket_iam_member.function_file_bucket_iam](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_iam_member) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_env"></a> [env](#input\_env) | Environment Name | `string` | n/a | yes |
| <a name="input_gcp_project"></a> [gcp\_project](#input\_gcp\_project) | GCP project ID used for deployment | `string` | n/a | yes |
| <a name="input_gcp_region"></a> [gcp\_region](#input\_gcp\_region) | GCP region used for deployment (default = us-east1) | `string` | `"us-east1"` | no |
| <a name="input_service"></a> [service](#input\_service) | Name of your service | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
