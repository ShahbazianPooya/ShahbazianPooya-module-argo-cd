# Define the provider for Kubernetes
# Helm release for Argo CD
resource "helm_release" "argo_cd" {
  name       = "argo-cd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  version    = "3.2.3" # specify the version of Argo CD you wish to install

  # Customize Argo CD values here. For example, you can specify a values file or inline values
  set {
    name  = "server.service.type"
    value = "LoadBalancer"
  }

  # More settings...
}