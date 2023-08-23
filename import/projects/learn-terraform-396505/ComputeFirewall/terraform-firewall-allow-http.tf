resource "google_compute_firewall" "terraform_firewall_allow_http" {
  allow {
    ports    = ["80", "8080"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "terraform-firewall-allow-http"
  network       = "https://www.googleapis.com/compute/v1/projects/learn-terraform-396505/global/networks/terraform-network"
  priority      = 1000
  project       = "learn-terraform-396505"
  source_ranges = ["0.0.0.0/0"]
  source_tags   = ["web"]
}
# terraform import google_compute_firewall.terraform_firewall_allow_http projects/learn-terraform-396505/global/firewalls/terraform-firewall-allow-http
