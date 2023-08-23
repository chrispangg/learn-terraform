resource "google_project_service" "storage_googleapis_com" {
  project = "151107588138"
  service = "storage.googleapis.com"
}
# terraform import google_project_service.storage_googleapis_com 151107588138/storage.googleapis.com
