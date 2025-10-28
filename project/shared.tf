locals {
  # Repository name
  name = "node-enrollment-experiment"
  description = {
    short = "Experiments in secure node enrollment"
    long = "This repository contains experimental work exploring secure node enrollment patterns and vault integration approaches."
  }

  # Topics and labels for the repository
  # These are used to tag the repository with semantic keywords
  keywords = {
    # Core concepts
    abstract = [
      "enrollment",
      "authentication",
      "infrastructure-as-code",
      "secrets-management",
      "node-bootstrapping",
      "gitops",
      "devops",
      "automation",
      "security",
      "zero-trust",
    ]
    # Service providers
    companies = [
      "hetzner",
      "infisical",
      "github",
    ]
    # Core technologies actually used
    technologies = [
      "opentofu",
      "nix",
      "sops",
      "age",
      "just",
      "git",
      "cursor",
    ]
  }
}
