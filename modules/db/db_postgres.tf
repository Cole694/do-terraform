resource "digitalocean_database_db" "web-app-db" {
  cluster_id = digitalocean_database_cluster.web-app-db-clulster.id
  name       = "k8s_demo_db"
}

resource "digitalocean_database_cluster" "web-app-db-clulster" {
  name       = "k8s_demo_db_cluster"
  engine     = "pg"
  version    = "11"
  size       = "db-s-1vcpu-1gb"
  region     = "fra1"
  node_count = 1
}