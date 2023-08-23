resource "google_compute_subnetwork" "terraform_network" {
  ip_cidr_range              = "10.190.0.0/20"
  name                       = "terraform-network"
  network                    = "https://www.googleapis.com/compute/v1/projects/learn-terraform-396505/global/networks/terraform-network"
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "learn-terraform-396505"
  purpose                    = "PRIVATE"
  region                     = "asia-south2"
  stack_type                 = "IPV4_ONLY"
}
# terraform import google_compute_subnetwork.terraform_network projects/learn-terraform-396505/regions/asia-south2/subnetworks/terraform-network
