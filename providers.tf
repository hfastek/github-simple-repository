terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 3.1.0"
    }
  }
}


