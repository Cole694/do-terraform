resource "digitalocean_database_db" "web-app-db" {
  cluster_id = digitalocean_database_cluster.web-app-db-clulster.id
  name       = "web-app-db"
}

resource "digitalocean_database_cluster" "web-app-db-clulster" {
  name       = "web-app-db-clulster"
  engine     = "pg"
  version    = "11"
  size       = "db-s-1vcpu-1gb"
  region     = "fra1"
  node_count = 1
}