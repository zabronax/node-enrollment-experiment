resource "hcloud_ssh_key" "experiment_000_ssh_key" {
  name = "experiment-000-ssh-key"
  public_key = file("${path.module}/ssh-identity.pub")
}

resource "hcloud_server" "experiment_000_node" {
  name = "experiment-000-node"
  image = "debian-13"
  server_type = "cax11" # arm 2vcpu, 4gb ram, 40gb disk
  location = "hel1" # Helsinki, Finland
  ssh_keys = [hcloud_ssh_key.experiment_000_ssh_key.id]
  user_data = local.cloud_init_template
}

output "server_ip_address" {
  description = "Details of the Hetzner server"
  value = {
    ipv4 = hcloud_server.experiment_000_node.ipv4_address
    ipv6 = hcloud_server.experiment_000_node.ipv6_address
  }
}
