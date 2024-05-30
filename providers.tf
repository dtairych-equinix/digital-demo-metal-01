terraform {
  required_providers {
    equinix = {
      source  = "equinix/equinix"
      version = "1.17.0"
    }
  }
}

provider "equinix" {
  auth_token    = var.auth_token
}