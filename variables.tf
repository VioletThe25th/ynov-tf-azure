variable "prefix" {
  default = "Jeremy-Bilger-ci-cd" # A personnaliser avec votre nom
}

variable "environment" {
  default = "demo"
}

variable "project" {
  default = "ci-cd"
}

variable "ssh_key" {
  default = ""
}

# variable "public_key" {
#   description = "Clé publique SSH pour la VM"
#   type        = string
# }
