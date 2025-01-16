resource "google_storage_bucket" "bucket_1" {
  name     = "my-bucket-1-${random_id.id.hex}"
  location = "US"
  force_destroy = true
}

resource "google_storage_bucket" "bucket_2" {
  name     = "my-bucket-2-${random_id.id.hex}"
  location = "EU"
  force_destroy = true
}

resource "random_id" "id" {
  byte_length = 8
}
