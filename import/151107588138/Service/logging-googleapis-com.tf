resource "google_project_service" "logging_googleapis_com" {
  project = "151107588138"
  service = "logging.googleapis.com"
}
# terraform import google_project_service.logging_googleapis_com 151107588138/logging.googleapis.com
