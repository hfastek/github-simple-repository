resource "random_pet" "suffix" {
  length = 1
}

output "name" {
  value = "${var.author}-${var.project}-${random_pet.suffix.id}"
}
