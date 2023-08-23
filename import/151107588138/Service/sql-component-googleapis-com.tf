resource "google_project_service" "sql_component_googleapis_com" {
  project = "151107588138"
  service = "sql-component.googleapis.com"
}
# terraform import google_project_service.sql_component_googleapis_com 151107588138/sql-component.googleapis.com
