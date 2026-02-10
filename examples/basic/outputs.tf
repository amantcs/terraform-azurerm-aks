output "id" {
  value = module.aks.id
}

output "kube_config" {
  value     = module.aks.kube_config
  sensitive = true
}

output "fqdn" {
  value = module.aks.fqdn
}
