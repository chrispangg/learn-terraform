resource "google_compute_instance" "terraform_instance" {
  boot_disk {
    auto_delete = true
    device_name = "persistent-disk-0"

    initialize_params {
      image = "https://www.googleapis.com/compute/beta/projects/ubuntu-os-cloud/global/images/ubuntu-2204-jammy-v20230727"
      size  = 10
      type  = "pd-standard"
    }

    mode   = "READ_WRITE"
    source = "https://www.googleapis.com/compute/v1/projects/learn-terraform-396505/zones/australia-southeast2-a/disks/terraform-instance"
  }

  machine_type = "e2-small"

  metadata = {
    startup-script = "# Docker Installation Scripts for Ubuntu\n# From Docker website:\n# https://docs.docker.com/engine/install/ubuntu/\n\n# Update the apt package index and install packages to allow apt to use a repository over HTTPS:\n\nsudo apt-get update\nsudo apt-get install ca-certificates curl gnupg lsb-release\n\n# Add Docker's official GPG key\n\nsudo mkdir -p /etc/apt/keyrings\ncurl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg\n\n# Use the following command to set up the repository\n\necho \\\n  \"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \\\n  $(lsb_release -cs) stable\" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null\n\n# Update the apt package index, and install the latest version of Docker Engine and containerd\n\nsudo apt-get update\nsudo apt-get install -y docker-ce # docker-ce-cli containerd.io docker-compose-plugin # <- uncomment to install additional tools"
  }

  name = "terraform-instance"

  network_interface {
    access_config {
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/learn-terraform-396505/global/networks/terraform-network"
    network_ip         = "10.192.0.2"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/learn-terraform-396505/regions/australia-southeast2/subnetworks/terraform-network"
    subnetwork_project = "learn-terraform-396505"
  }

  project = "learn-terraform-396505"

  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    provisioning_model  = "STANDARD"
  }

  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_vtpm                 = true
  }

  tags = ["ssh", "streamlit", "web"]
  zone = "australia-southeast2-a"
}
# terraform import google_compute_instance.terraform_instance projects/learn-terraform-396505/zones/australia-southeast2-a/instances/terraform-instance
