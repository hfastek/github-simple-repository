resource "tls_private_key" "ssh_key" {
  algorithm = "RSA"
  rsa_bits  = var.bits
}

output "private_pem" {
  value = tls_private_key.ssh_key.private_key_pem
}

output "public_ssh" {
  value = tls_private_key.ssh_key.public_key_openssh
}
