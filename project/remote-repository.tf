resource "github_repository" "this" {
  name        = local.name
  description = local.description.short
  visibility  = "private"

  topics = concat(
    local.keywords.abstract,
  )

  # Features
  has_issues      = false
  has_projects    = false
  has_wiki        = false
  has_discussions = false
}

output "repository_http_clone_url" {
  description = "The HTTP clone URL of the GitHub repository"
  value       = github_repository.this.http_clone_url
}
