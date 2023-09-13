terraform {
  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
    }
  }
}

variable "hcloud_token" {
  default = ""
}

variable "location" {
  default = "fsn1"
}

variable "instances" {
  default = "32"
}

variable "server_type" {
  default = "ccx33"
}

variable "os_type" {
  default = "ubuntu-22.04"
}

variable "vm_prefix" {
  default = "val-"
}

