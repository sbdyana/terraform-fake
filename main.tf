# output "teest" {
#    value = "test-commit test"
#}

# terraform {
#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "4.81.0"
#     }
#   }
# }
# provider "azurerm" {
#   features {}

#   use_oidc             = true
#   use_cli              = false
#   client_id            = "42ad5adb-c5c9-40e4-8614-b3f0280ea084"
#   tenant_id            = "fda5383d-847b-4089-995a-a2cd0f765a2a"
#   subscription_id      = "76f1bbf7-1361-4d74-82d2-ba87b334bfb4"
#   oidc_token_file_path = "/var/run/secrets/azure/tokens/azure-identity-token"
# }

# # 1. 리소스 그룹 생성
# resource "azurerm_resource_group" "test" {
#   name     = "rg-tfe-test-hc"
#   location = "koreacentral"
# }


#terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "6.73.0"
#     }
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "5.14.0"
#     }
#     azuread = {
#       source  = "hashicorp/azuread"
#       version = "3.10.0"
#     }
#     azapi = {
#       source  = "Azure/azapi"
#       version = "2.13.0"
#     }
#     tfe = {
#       source  = "hashicorp/tfe"
#       version = "0.84.0"
#     }
#   }
# }

terraform {
  required_providers {
    ncloud = {
      source  = "NaverCloudPlatform/ncloud"
      version = "4.0.7"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "6.27.0"
    }
  }
}

output "mirror_test" {
  value = "provider mirror ok 222222"
}

