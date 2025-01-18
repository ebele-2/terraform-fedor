resource "google_compute_instance" "vm_ubuntu" {
  name         = "vm-ubuntu"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet_1.id
    access_config {}
  }
}

resource "google_compute_instance" "vm_debian" {
  name         = "vm-debian"
  machine_type = "e2-micro"
  zone         = "us-west1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet_2.id
    access_config {}
  }
}
