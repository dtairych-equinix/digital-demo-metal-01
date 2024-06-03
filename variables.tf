variable "auth_token" {
    description = "Equinix Metal API token for user"
    type = string
    sensitive = true
}

variable "metal_org_id" {
    description = "Equinix Metal organisation ID"
    type = string
    sensitive = true
}

variable "metal_project_name" {
    description = "Name of the Equinix Metal project to be created"
    type = string
}

variable "metal_metro" {
    description = "The metro in which the Equinix Metal server will be deployed"
    type = string
}

variable "metal_sku" {
    description = "The SKU to deploy in Equinix Metal.  For this test, the smallest server is recommended"
    type = string
}