output "nodes_status" {
  value = {
    for server in hcloud_server.default :
    server.name => server.status
  }
}

output "nodes_ips" {
  value = {
    for server in hcloud_server.default :
    server.name => server.ipv4_address
  }
}

output "rendered" {
  value = local.ansible_inventory
}