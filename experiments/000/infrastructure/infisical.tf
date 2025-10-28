# Infisical requires a project to be created before any resources can be created.
resource "infisical_project" "this" {
  name        = "experiment-node-enrollment-000"
  slug        = "experiment-node-enrollment-000"
  description = "Part of the Node Enrollment Experiment repo. This is for experiment 000."
  type        = "secret-manager"

  # This is experimental, so we will create environments explicitly.
  should_create_default_envs = false
}

# Just output all the details of the project for now.
output "project_details" {
  description = "Details of the Infisical project"
  value       = infisical_project.this
}
