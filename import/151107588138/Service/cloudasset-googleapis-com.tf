resource "google_project_service" "cloudasset_googleapis_com" {
  project = "151107588138"
  service = "cloudasset.googleapis.com"
}
# terraform import google_project_service.cloudasset_googleapis_com 151107588138/cloudasset.googleapis.com
