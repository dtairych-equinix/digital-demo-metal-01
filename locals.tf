resource "tls_private_key" "ssh_key" {
  algorithm = "RSA"#"ED25519"
  rsa_bits  = 4096
}

resource "local_file" "private_key" {
  content         = tls_private_key.ssh_key.private_key_openssh
  filename        = "./private_key"
  file_permission = "0600"
}

resource "local_file" "public_key" {
  content         = tls_private_key.ssh_key.public_key_openssh
  filename        = "./public_key"
  file_permission = "0600"
}