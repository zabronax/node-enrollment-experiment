resource "github_branch_protection" "main" {
  repository_id = github_repository.this.node_id

  # The branch we want to enforce policies on
  pattern       = "main"

  # We don't want to allow deletions
  allows_deletions    = false

  # We don't want to allow force pushes
  allows_force_pushes = false

  # We want to enforce linear history to promote trunk-based development
  required_linear_history = true

  # This is a private repository, so we don't need to enforce admins
  enforce_admins = false

  required_status_checks {
    # We want to enforce that the CI Status check must pass before merging
    strict = true
    # The status checks we want to enforce
    contexts = [
      "CI Status",
    ]
  }
}
