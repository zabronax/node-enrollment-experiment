---
id: 001
status: "accepted"
supersedes: null
superseded_by: null
---
# Decision Record 001: Experiment Format Guidelines

## Context

Need standardized format for experiment documentation to ensure consistency and clarity across all experimental work in the Node Enrollment Experiments repository.

## Decision

Use markdown files with minimal YAML frontmatter for experiment documentation:

```yaml
---
experiment: 000
status: setup
---
```

**Required frontmatter:**
- `experiment`: 3-digit zero-padded experiment ID
- `status`: Current lifecycle stage (setup, running, paused, concluded, abandoned)

**Required content sections:**
- **Title**: Brief descriptive name of the experiment
- **Driving Question**: Single, clear question that drives the experiment
- **Description**: Brief explanation of what the experiment explores
- **Technologies in Use**: Simple list of key technologies and services

**Optional sections (add as needed):**
- **Findings**: Results and learnings as they emerge
- **Next Steps**: Planned actions or follow-up work
- **Decisions**: Technology choices made during the experiment

**Status values:**
- `setup`: Initial experiment configuration and planning
- `running`: Active experimentation and testing
- `paused`: Temporarily stopped, may resume
- `concluded`: Experiment completed with findings
- `abandoned`: Experiment stopped without completion

## Consequences

### Positive

- Consistent structure across all experiments
- Clear lifecycle tracking and status management
- Minimal overhead while providing necessary guidance
- Easy to scan and understand experiment state

### Negative

- Requires discipline to maintain consistent format
- May need updates as we learn what works best

### Countermeasures

- **Minimal requirements**: Only require essential sections
- **Flexible structure**: Allow additional sections as needed
- **Regular review**: Update format based on usage patterns

## Implementation

- Store experiments in `/experiments/{id}/` directories
- Use `README.md` as the main experiment documentation
- Follow the lifecycle stages in commit messages
- Document findings and decisions as they emerge

## Example

```markdown
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
```
