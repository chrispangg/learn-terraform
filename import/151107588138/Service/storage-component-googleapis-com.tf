resource "google_project_service" "storage_component_googleapis_com" {
  project = "151107588138"
  service = "storage-component.googleapis.com"
}
# terraform import google_project_service.storage_component_googleapis_com 151107588138/storage-component.googleapis.com
