resource "equinix_metal_ssh_key" "hybrid" {
  name       = "terraform-hybrid"
  public_key = tls_private_key.ssh_key.public_key_openssh
}

resource "equinix_metal_project" "network-test" {
  name            = "metal-internet-test"
  organization_id = var.metal_org_id
}

resource "equinix_metal_device" "host" {
  # for_each         = var.hosts
  hostname         = "metal-backend"
  plan             = var.metal_sku
  metro            = var.metal_metro
  operating_system = "ubuntu_22_04"
  billing_cycle    = "hourly"
  project_id       = equinix_metal_project.network-test.id

  depends_on = [
    equinix_metal_ssh_key.hybrid
  ]
}
