terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">1.12.0"
}

resource "yandex_mdb_mysql_cluster" "cluster" {
  name                = var.name
  environment         = var.environment
  network_id          = var.network_id
  version             = var.mysql_version

  resources {
    resource_preset_id = var.resource_preset_id
    disk_type_id       = var.disk_type
    disk_size          = var.disk_size
  }

  host {
    zone             = var.zone
    subnet_id        = var.subnet_id
    assign_public_ip = var.public_ip
  }

  dynamic "host" {
    for_each = range(var.ha ? 1 : 0)
    content {
      zone             = var.zone
      subnet_id        = var.subnet_id
      assign_public_ip = var.public_ip
    }
  }
}
