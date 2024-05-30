output "ssh_string" {
  value = "ssh -i ./private_key root@${equinix_metal_device.host.access_public_ipv4}"
}