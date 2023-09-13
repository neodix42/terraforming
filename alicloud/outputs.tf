output "this_instance_name" {
  description = "The instance names."
  value       = alicloud_instance.this.*.instance_name
}

output "this_instance_type" {
  description = "The type of the instance."
  value       = alicloud_instance.this.*.instance_type
}

output "this_private_ip" {
  description = "The private ip of the instance."
  value       = alicloud_instance.this.*.private_ip
}

output "this_public_ip" {
  description = "The public ip of the instance."
  value       = alicloud_instance.this.*.public_ip
}

output "rendered" {
  value = local.ansible_inventory
}