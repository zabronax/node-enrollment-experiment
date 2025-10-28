terraform {
  required_providers {
    infisical = {
      source  = "Infisical/infisical"
      version = "0.15.41"
    }
  }

  # This is Hetzner's Ceph Object Storage
  backend "s3" {
    bucket = "experiment"
    key    = "000/infrastructure/terraform.tfstate"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

variable "infisical_client_id" {
  description = "The client ID for the Infisical API"
  type        = string
  sensitive   = true
}
variable "infisical_client_secret" {
  description = "The client secret for the Infisical API"
  type        = string
  sensitive   = true
}

provider "infisical" {
  host = "https://app.infisical.com" # Required for self hosted instance of Infisical, default is https://app.infisical.com
  auth = {
    universal = {
      client_id     = var.infisical_client_id
      client_secret = var.infisical_client_secret
    }
  }
}
