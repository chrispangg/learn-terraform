resource "google_compute_firewall" "terraform_firewall_streamlit" {
  allow {
    ports    = ["8501"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "terraform-firewall-streamlit"
  network       = "https://www.googleapis.com/compute/v1/projects/learn-terraform-396505/global/networks/terraform-network"
  priority      = 1000
  project       = "learn-terraform-396505"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["streamlit"]
}
# terraform import google_compute_firewall.terraform_firewall_streamlit projects/learn-terraform-396505/global/firewalls/terraform-firewall-streamlit
