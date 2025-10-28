---
experiment: 000
status: setup
---
# Node Authentication: OpenTofu + Infisical + Hetzner

**How can a node instantiated using IaC on Hetzner securely authenticate with Infisical?**

This experiment explores node authentication mechanisms for infrastructure deployed via OpenTofu on Hetzner Cloud, with Infisical as the vault service.

## Technologies in Use

**IaC Tool**: OpenTofu
**Vault Service**: Infisical
**Cloud Provider**: Hetzner Cloud

## Initial Setup Requirements

**Hetzner Cloud:**
- Private Hetzner Cloud account
- OpenTofu definitions for Hetzner infrastructure
- API token for programmatic access

**Infisical:**
- Private Infisical SaaS account
- OpenTofu definitions for Infisical infrastructure
- Organization and project configuration via IaC
- API token for programmatic access

**Development Environment:**
- Nix flake dev shell for dependency tracking

**Secrets Management:**
- SOPS + Age for encrypting sensitive configuration
- Age key pair for SOPS encryption
- Sealed secrets embedded in repository
