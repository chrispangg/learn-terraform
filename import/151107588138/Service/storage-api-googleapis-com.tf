resource "google_project_service" "storage_api_googleapis_com" {
  project = "151107588138"
  service = "storage-api.googleapis.com"
}
# terraform import google_project_service.storage_api_googleapis_com 151107588138/storage-api.googleapis.com
