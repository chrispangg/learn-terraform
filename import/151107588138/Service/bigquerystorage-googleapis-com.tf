resource "google_project_service" "bigquerystorage_googleapis_com" {
  project = "151107588138"
  service = "bigquerystorage.googleapis.com"
}
# terraform import google_project_service.bigquerystorage_googleapis_com 151107588138/bigquerystorage.googleapis.com
