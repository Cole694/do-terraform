resource "digitalocean_kubernetes_cluster" "k8s_demo" {
  name    = "web-cluster"
  region  = "fra1"
  version = "1.22.11-do.0"

  node_pool {
    name       = "web-worker-pool"
    size       = "s-2vcpu-1gb"
    node_count = 3
  }
}