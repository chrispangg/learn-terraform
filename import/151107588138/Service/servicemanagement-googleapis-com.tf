resource "google_project_service" "servicemanagement_googleapis_com" {
  project = "151107588138"
  service = "servicemanagement.googleapis.com"
}
# terraform import google_project_service.servicemanagement_googleapis_com 151107588138/servicemanagement.googleapis.com
