resource "google_project_service" "cloudapis_googleapis_com" {
  project = "151107588138"
  service = "cloudapis.googleapis.com"
}
# terraform import google_project_service.cloudapis_googleapis_com 151107588138/cloudapis.googleapis.com
