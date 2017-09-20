provider "kubernetes" {
  config_context_cluster   = "bburns-ign-bburns-ignite-c10894mgmt"
}

resource "kubernetes_namespace" "example" {
  metadata {
    name = "terraform-demo"
  }
}
