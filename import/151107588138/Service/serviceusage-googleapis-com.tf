resource "google_project_service" "serviceusage_googleapis_com" {
  project = "151107588138"
  service = "serviceusage.googleapis.com"
}
# terraform import google_project_service.serviceusage_googleapis_com 151107588138/serviceusage.googleapis.com
