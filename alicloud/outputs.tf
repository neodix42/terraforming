output "this_instance_name_a" {
  description = "The instance names. Zone A"
  value       = alicloud_instance.zoneA.*.instance_name
}

output "this_instance_type_a" {
  description = "The type of the instance. Zone A"
  value       = alicloud_instance.zoneA.*.instance_type
}

output "this_private_ip_a" {
  description = "The private ip of the instance. Zone A"
  value       = alicloud_instance.zoneA.*.private_ip
}

output "this_public_ip_a" {
  description = "The public ip of the instance. Zone A"
  value       = alicloud_instance.zoneA.*.public_ip
}





output "this_instance_name_b" {
  description = "The instance names. Zone B"
  value       = alicloud_instance.zoneB.*.instance_name
}

output "this_instance_type_b" {
  description = "The type of the instance. Zone B"
  value       = alicloud_instance.zoneB.*.instance_type
}

output "this_private_ip_b" {
  description = "The private ip of the instance. Zone B"
  value       = alicloud_instance.zoneB.*.private_ip
}

output "this_public_ip_b" {
  description = "The public ip of the instance. Zone C"
  value       = alicloud_instance.zoneB.*.public_ip
}



output "this_instance_name_c" {
  description = "The instance names. Zone C"
  value       = alicloud_instance.zoneC.*.instance_name
}

output "this_instance_type_c" {
  description = "The type of the instance. Zone C"
  value       = alicloud_instance.zoneC.*.instance_type
}

output "this_private_ip_c" {
  description = "The private ip of the instance. Zone C"
  value       = alicloud_instance.zoneC.*.private_ip
}

output "this_public_ip_c" {
  description = "The public ip of the instance. Zone C"
  value       = alicloud_instance.zoneC.*.public_ip
}

output "rendered_a" {
  value = local.ansible_inventory_a
}

output "rendered_b" {
  value = local.ansible_inventory_b
}

output "rendered_c" {
  value = local.ansible_inventory_c
}