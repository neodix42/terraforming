locals {
  ansible_inventory = templatefile("${path.module}/templates/ansible_inventory.tpl", {
    nodes = hcloud_server.default.*.name
	addresses = hcloud_server.default.*.ipv4_address
	user = "root"
  })
}

