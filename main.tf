# resource "kubernetes_namespace" "argo-ns" {
#   metadata {
#     name = "argocd"
#   }
# }

# resource "helm_release" "argocd" {
#   name       = "msur"
#   chart      = "argo-cd"
#   repository = "https://argoproj.github.io/argo-helm"
#   namespace  = "argocd"
  
#   # We are going to access the console with a port forwarded connection, so we'll disable TLS.
#   # This allow us to avoid the self-signed certificate warning for localhosts.
#   # controller.extraArgs = ["insecure"]
  
# }
