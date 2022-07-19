resource "digitalocean_kubernetes_cluster" "my_cluster" {
  name    = "web_cluster"
  region  = "fra1"
  version = "1.22.11-do.0"

  node_pool {
    name       = "web-worker-pool"
    size       = "s-2vcpu-1gb"
    node_count = 3
  }
}