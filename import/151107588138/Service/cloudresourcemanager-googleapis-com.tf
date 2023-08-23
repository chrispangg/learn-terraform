resource "google_project_service" "cloudresourcemanager_googleapis_com" {
  project = "151107588138"
  service = "cloudresourcemanager.googleapis.com"
}
# terraform import google_project_service.cloudresourcemanager_googleapis_com 151107588138/cloudresourcemanager.googleapis.com
