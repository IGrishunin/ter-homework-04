variable "name" {
  type = string
  default = "mysql_cluster"
}

variable "environment" {
  type = string
  default = "PRESTABLE"
}

variable "network_id" {
  type = string
}

variable "mysql_version" {
  type = string
  default = "8.0"
}

variable "disk_type" {
  type = string
  default = "network-hdd"
}

variable "disk_size" {
  type = number
  default = 10
}

variable "ha" {
  type = bool
  default = true
}

variable "zone" {
  type = string
  default = "ru-central1-a"
}

variable "subnet_id" {
  type = string
}

variable "public_ip" {
  type = bool
  default = true
}

variable "resource_preset_id" {
  type = string
  default = "b2.medium"
}

variable "security_group_ids" {
  type = list(string)
}
