---
id: 000
status: "accepted"
supersedes: null
superseded_by: null
---

# Decision Record 000: Decision Record Format

## Status

Accepted

## Context

Need a lightweight way to document governance and process decisions for the Node Enrollment Experiments repository.

## Decision

Use YAML frontmatter + markdown format for decision records:

```yaml
---
id: 000
status: "proposed" | "under_review" | "accepted" | "rejected" | "superseded"
supersedes: null
superseded_by: null
---
```

**Content sections**: Context, Decision, Consequences, Countermeasures (optional), Future Considerations (optional)

*Note: This is the minimal record - decisions may require more extensive evaluation*

**Process**: Create as branches → PR review → status transitions (or direct commits for experimental work)

## Consequences

### Positive

- Clear record of decision reasoning
- Helps track governance choices and process decisions
- Lightweight format with minimal overhead

### Negative

- Requires discipline to maintain
- Could become outdated without active maintenance

### Countermeasures

- **Scope limitation**: Only record governance and process decisions that affect the repository structure or workflow
- **Minimal format**: Keep records short and focused
- **Regular review**: Supersede outdated decisions rather than updating them

## Implementation

- Store in `/docs/decision-records/` with zero-padded filenames (`000-`, `001-`, etc.)
- Use `/docs/decision-records/template.md` as starting point
- **Scope**: Only record governance decisions (commit message rules, repository structure, process decisions that affect how work is organized)
