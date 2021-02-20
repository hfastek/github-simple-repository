resource "github_repository" "terraformed_repo" {
  name               = var.name
  description        = "Terraformed repository"
  auto_init          = true
  gitignore_template = "Terraform"
  visibility         = var.type
}

resource "github_repository_deploy_key" "access_key" {
  title      = "Repository access key"
  repository = github_repository.terraformed_repo.name
  key        = var.openssh
  read_only  = true
}

output "shell_clone" {
  value = "git clone ${github_repository.terraformed_repo.ssh_clone_url}"
}

output "name" {
  value = github_repository.terraformed_repo.name
}
