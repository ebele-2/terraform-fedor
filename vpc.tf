resource "google_compute_network" "my_vpc" {
  name = "my-vpc"
}

resource "google_compute_subnetwork" "subnet_1" {
  name          = "subnet-1"
  region        = "us-central1"
  network       = google_compute_network.my_vpc.id
  ip_cidr_range = "10.0.1.0/24"
}

resource "google_compute_subnetwork" "subnet_2" {
  name          = "subnet-2"
  region        = "us-west1"
  network       = google_compute_network.my_vpc.id
  ip_cidr_range = "10.0.2.0/24"
}

resource "google_compute_firewall" "allow_http_https" {
  name    = "allow-http-https"
  network = google_compute_network.my_vpc.id

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
}
