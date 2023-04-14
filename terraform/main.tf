resource "google_compute_instance" "github-terraform-instance" {
  name         = "github-terraform-instance"
  machine_type = "e2-medium"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Optional. External IP address configuration.
    }
  }

  tags = ["github-terraform-instance"]
}

resource "google_compute_firewall" "github-terraform" {
  name    = "github-terraform"
  network = "default"
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges = ["0.0.0.0/0"]
}

resource "google_storage_bucket" "bucket" {
  name     = "terraform-backend-bucket"
  location = "US"

  versioning {
    enabled = true
  }
}

