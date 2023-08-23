resource "google_project_service" "datastore_googleapis_com" {
  project = "151107588138"
  service = "datastore.googleapis.com"
}
# terraform import google_project_service.datastore_googleapis_com 151107588138/datastore.googleapis.com
