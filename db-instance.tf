resource "google_sql_database_instance" "mysql_instance" {
  name             = "mysql-instance"
  database_version = "MYSQL_8_0"
  region           = "us-central1"

  settings {
    tier = "db-f1-micro"
  }
}

resource "google_sql_database_instance" "postgresql_instance" {
  name             = "postgresql-instance"
  database_version = "POSTGRES_14"
  region           = "us-west1"

  settings {
    tier = "db-f1-micro"
  }
}
