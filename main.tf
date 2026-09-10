# output "teest" {
#    value = "test-commit test"
#}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.81.0"
    }
  }
}
provider "azurerm" {
  features {}

  use_oidc             = true
  use_cli              = false
  client_id            = "42ad5adb-c5c9-40e4-8614-b3f0280ea084"
  tenant_id            = "fda5383d-847b-4089-995a-a2cd0f765a2a"
  subscription_id      = "76f1bbf7-1361-4d74-82d2-ba87b334bfb4"
  oidc_token_file_path = "/var/run/secrets/azure/tokens/azure-identity-token"
}

# 1. 리소스 그룹 생성
resource "azurerm_resource_group" "test" {
  name     = "rg-tfe-test-hc"
  location = "koreacentral"
}
