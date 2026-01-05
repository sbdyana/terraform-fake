terraform {
  required_providers {
    ncloud = {
      source = "NaverCloudPlatform/ncloud"
      version = "4.0.4"
    }
  }
}

provider "ncloud" {
   #Configuration options
  access_key = var.access_key
  secret_key = var.secret_key
  support_vpc = true
  region      = "KR"
}

resource "ncloud_vpc" "vpc" {
  name = "tfe-sb-test"
  ipv4_cidr_block = "10.0.0.0/16"
}

variable "access_key" {
    type = string
}
variable "secret_key" {
    type = string
}

#output "test" {
#  value = "test"
#}
