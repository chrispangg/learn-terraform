resource "google_compute_network" "terraform_network" {
  auto_create_subnetworks = true
  name                    = "terraform-network"
  project                 = "learn-terraform-396505"
  routing_mode            = "REGIONAL"
}
# terraform import google_compute_network.terraform_network projects/learn-terraform-396505/global/networks/terraform-network
