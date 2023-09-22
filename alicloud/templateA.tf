locals {
  ansible_inventory = templatefile("${path.module}/templates/ansible_inventory.tpl", {
    nodes = concat(alicloud_instance.zoneA.*.instance_name, alicloud_instance.zoneB.*.instance_name, alicloud_instance.zoneC.*.instance_name)
	addresses =  concat(alicloud_instance.zoneA.*.public_ip, alicloud_instance.zoneB.*.public_ip, alicloud_instance.zoneC.*.public_ip)
	user = "root"
  })
}