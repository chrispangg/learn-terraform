resource "google_compute_subnetwork" "terraform_network" {
  ip_cidr_range = "10.196.0.0/20"
  name          = "terraform-network"
  network       = "https://www.googleapis.com/compute/v1/projects/learn-terraform-396505/global/networks/terraform-network"
  project       = "learn-terraform-396505"
  purpose       = "PRIVATE"
  region        = "us-east7"
  stack_type    = "IPV4_ONLY"
}
# terraform import google_compute_subnetwork.terraform_network projects/learn-terraform-396505/regions/us-east7/subnetworks/terraform-network
