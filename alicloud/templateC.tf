locals {
  ansible_inventory_c = templatefile("${path.module}/templates/ansible_inventory.tpl", {
    nodes = alicloud_instance.zoneC.*.instance_name
	addresses =  alicloud_instance.zoneC.*.public_ip
	user = "root"
  })
}