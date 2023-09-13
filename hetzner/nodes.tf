resource "hcloud_server" "default" {
  count       = var.instances
  name        = "${var.vm_prefix}${format("%03d", count.index + 1)}"
  image       = var.os_type
  server_type = var.server_type
  location    = var.location
  ssh_keys    = [hcloud_ssh_key.default.id]
  labels = {
    type = "validators-swarm"
  }
}