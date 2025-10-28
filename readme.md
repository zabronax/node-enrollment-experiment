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
- `/experiments/{id}/` - Individual experiment directories
- Each experiment includes documentation and implementation artifacts
- Commit messages follow experimental lifecycle patterns (start, iterate, conclude, pivot)
- `/docs/decision-records/` - Governance decisions and process documentation

## Getting Started
1. Browse experiments in `/experiments/` to see what's being explored
2. Each experiment directory contains its own README with setup instructions
3. Check `/docs/decision-records/` for governance decisions and process documentation
