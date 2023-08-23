resource "google_project_service" "bigquery_googleapis_com" {
  project = "151107588138"
  service = "bigquery.googleapis.com"
}
# terraform import google_project_service.bigquery_googleapis_com 151107588138/bigquery.googleapis.com
