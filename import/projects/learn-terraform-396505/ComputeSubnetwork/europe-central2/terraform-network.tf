resource "google_compute_subnetwork" "terraform_network" {
  ip_cidr_range              = "10.186.0.0/20"
  name                       = "terraform-network"
  network                    = "https://www.googleapis.com/compute/v1/projects/learn-terraform-396505/global/networks/terraform-network"
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "learn-terraform-396505"
  purpose                    = "PRIVATE"
  region                     = "europe-central2"
  stack_type                 = "IPV4_ONLY"
}
# terraform import google_compute_subnetwork.terraform_network projects/learn-terraform-396505/regions/europe-central2/subnetworks/terraform-network
