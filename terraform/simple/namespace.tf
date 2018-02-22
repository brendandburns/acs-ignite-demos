provider "kubernetes" {
  config_context_cluster   = "demo-k8s-bburns-demo-c10894mgmt"
}

resource "kubernetes_namespace" "example" {
  metadata {
    name = "terraform-demo"
  }
}
