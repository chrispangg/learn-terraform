resource "google_storage_bucket" "learn_terraform_396505_bucket" {
  force_destroy            = false
  location                 = "AUSTRALIA-SOUTHEAST2"
  name                     = "learn-terraform-396505-bucket"
  project                  = "learn-terraform-396505"
  public_access_prevention = "inherited"
  storage_class            = "STANDARD"
}
# terraform import google_storage_bucket.learn_terraform_396505_bucket learn-terraform-396505-bucket
