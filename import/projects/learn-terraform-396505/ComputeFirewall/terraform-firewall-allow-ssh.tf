resource "google_compute_firewall" "terraform_firewall_allow_ssh" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "terraform-firewall-allow-ssh"
  network       = "https://www.googleapis.com/compute/v1/projects/learn-terraform-396505/global/networks/terraform-network"
  priority      = 1000
  project       = "learn-terraform-396505"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["ssh"]
}
# terraform import google_compute_firewall.terraform_firewall_allow_ssh projects/learn-terraform-396505/global/firewalls/terraform-firewall-allow-ssh
