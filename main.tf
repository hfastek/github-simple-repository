module "naming_convention" {
  source = "./naming-convention"

  author  = var.author
  project = var.project

  # returns "name"
}

module "ssh_key" {
  source = "./ssh-keys"

  bits = var.bits

  # returns "private_pem" and "public_ssh"
}

module "github_repository" {
  source = "./github-repository"

  name    = module.naming_convention.name
  openssh = module.ssh_key.public_ssh
  type    = "public"

  # returns "shell_clone" and "name"
}

output "shell" {
  value = module.github_repository.shell_clone
}

output "key" {
  value = module.ssh_key.private_pem
}
