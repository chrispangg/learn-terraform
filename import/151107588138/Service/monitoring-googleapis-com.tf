resource "google_project_service" "monitoring_googleapis_com" {
  project = "151107588138"
  service = "monitoring.googleapis.com"
}
# terraform import google_project_service.monitoring_googleapis_com 151107588138/monitoring.googleapis.com
