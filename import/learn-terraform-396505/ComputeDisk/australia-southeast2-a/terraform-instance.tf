resource "google_compute_disk" "terraform_instance" {
  image                     = "https://www.googleapis.com/compute/beta/projects/ubuntu-os-cloud/global/images/ubuntu-2204-jammy-v20230727"
  name                      = "terraform-instance"
  physical_block_size_bytes = 4096
  project                   = "learn-terraform-396505"
  size                      = 10
  type                      = "pd-standard"
  zone                      = "australia-southeast2-a"
}
# terraform import google_compute_disk.terraform_instance projects/learn-terraform-396505/zones/australia-southeast2-a/disks/terraform-instance
