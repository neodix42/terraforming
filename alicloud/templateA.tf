locals {
  ansible_inventory_a = templatefile("${path.module}/templates/ansible_inventory.tpl", {
    nodes = alicloud_instance.zoneA.*.instance_name
	addresses =  alicloud_instance.zoneA.*.public_ip
	user = "root"
  })
}