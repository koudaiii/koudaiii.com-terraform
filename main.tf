# Configure the Microsoft Azure Provider
provider "azuread" {
  use_oidc = true
}

# Tenant Domain
data "azuread_domains" "default" {
  only_initial = true
}

locals {
  domain_name = data.azuread_domains.default.domains[0].domain_name
}
