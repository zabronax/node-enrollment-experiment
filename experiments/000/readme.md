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
- Hetzner Cloud account
- API token for OpenTofu provider authentication
- SSH key pair for VM access

**Infisical:**
- Infisical SaaS account (web-accessible setup)
- Organization and project configuration
- API token for programmatic access

**Development Environment:**
- OpenTofu installation and configuration
- Way to encode developer environment dependencies
- Way to encode secrets (environment variables, local config)

**Secrets Management:**
- Method to store and access Hetzner API token
- Method to store and access Infisical API token
- Secure handling of SSH keys and certificates
