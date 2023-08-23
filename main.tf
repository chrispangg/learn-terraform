terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
    }
  }
}

# connect to my google account
provider "google" {
  credentials = file(var.credentials_file)
  project     = var.project
  region      = var.region
  zone        = var.zone
}