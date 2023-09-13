locals {
  ansible_inventory = templatefile("${path.module}/templates/ansible_inventory.tpl", {
    nodes = alicloud_instance.this.*.instance_name
	addresses =  alicloud_instance.this.*.public_ip
	user = "root"
  })
}