import functions_framework
from google.cloud import bigquery
from settings import SETTINGS


@functions_framework.cloud_event
def dataset_upload_function(cloud_event):
    data = cloud_event.data

    bucket_name = data["bucket"]
    file_name = data["name"]

    if not file_name.lower().endswith(".csv"):
        return

    try:
        table_name = file_name.split("/")[0]
        if not table_name:
            raise ValueError("Invalid file path structure")

        client = bigquery.Client()

        job_config = bigquery.LoadJobConfig(
            source_format=bigquery.SourceFormat.CSV,
            autodetect=True,
            write_disposition=bigquery.WriteDisposition.WRITE_APPEND,
            schema_update_options=[bigquery.SchemaUpdateOption.ALLOW_FIELD_ADDITION],
        )

        uri = f"gs://{bucket_name}/{file_name}"
        table_id = f"{client.project}.{SETTINGS.DATASET_NAME}.{table_name}"

        load_job = client.load_table_from_uri(uri, table_id, job_config=job_config)

        load_job.result()

    except Exception:
        raise KeyError("Error while uploading the dataset")
