resource "google_project_service" "compute_googleapis_com" {
  project = "151107588138"
  service = "compute.googleapis.com"
}
# terraform import google_project_service.compute_googleapis_com 151107588138/compute.googleapis.com
