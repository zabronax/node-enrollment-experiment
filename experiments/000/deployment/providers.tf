terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.54.0"
    }
  }

  # This is Hetzner's Ceph Object Storage
  backend "s3" {
    bucket = "experiment"
    key    = "000/deployment/terraform.tfstate"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

variable "hcloud_token" {
  description = "The token for the Hetzner Cloud API"
  type        = string
  sensitive   = true
}

provider "hcloud" {
  token = var.hcloud_token
}
