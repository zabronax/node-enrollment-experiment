<div align="center">
  <img alt="Logo" src="./docs/assets/logo.svg" height="128">
  <h1>Node Enrollment Experiments</h1>
</div>

This repository contains experimental work exploring secure node enrollment patterns and vault integration approaches.

## Goal
Explore approaches for securely bootstrapping nodes with cryptographically-backed identities that can access dynamic secrets from vault services. The end goal is to develop standardized approaches that new projects can use for secure node enrollment.

## Approach
- **Experimental exploration** of different enrollment strategies
- **Vault integration testing** for secret management
- **Reproducible experiments** to validate approaches (IaC modules, machine images, NixOS flakes, etc.)
- **Versioned experiments** to track what works and what doesn't

## Structure
- `/experiments/{id}/` - Individual experiment directories with Nix flakes and OpenTofu configurations
- `/docs/decision-records/` - Governance decisions and process documentation
- `/project/` - Repository-level infrastructure (remote repository configuration)
- `.cursor/rules/` - Development guidelines and commit message conventions

## Getting Started
1. **Browse experiments** in `/experiments/` to see what's being explored
2. **Set up development environment** using the Nix flake in each experiment directory
3. **Check decision records** in `/docs/decision-records/` for governance decisions
4. **Follow commit guidelines** in `.cursor/rules/commit-message.mdc`
