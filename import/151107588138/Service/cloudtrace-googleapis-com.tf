resource "google_project_service" "cloudtrace_googleapis_com" {
  project = "151107588138"
  service = "cloudtrace.googleapis.com"
}
# terraform import google_project_service.cloudtrace_googleapis_com 151107588138/cloudtrace.googleapis.com
