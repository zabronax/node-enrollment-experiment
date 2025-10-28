locals {
  cloud_init_template = templatefile("${path.module}/cloud-init.template.yaml", {
  })
}
