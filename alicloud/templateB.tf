locals {
  ansible_inventory_b = templatefile("${path.module}/templates/ansible_inventory.tpl", {
    nodes = alicloud_instance.zoneB.*.instance_name
	addresses =  alicloud_instance.zoneB.*.public_ip
	user = "root"
  })
}