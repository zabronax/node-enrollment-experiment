terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }

  # This is Hetzner's Ceph Object Storage
  backend "s3" {
    bucket = "experiment"
    key    = "project/terraform.tfstate"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

variable "github_token" {
  description = "The token for the GitHub API"
  type        = string
  sensitive   = true
}

provider "github" {
  token = var.github_token
}
