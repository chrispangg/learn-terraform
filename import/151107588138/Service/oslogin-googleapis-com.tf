resource "google_project_service" "oslogin_googleapis_com" {
  project = "151107588138"
  service = "oslogin.googleapis.com"
}
# terraform import google_project_service.oslogin_googleapis_com 151107588138/oslogin.googleapis.com
