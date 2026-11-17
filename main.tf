module "vpc" {
  source = "./vpc"
  name = var.vpc_name
  subnets = var.vpc_subnets
}

module "marketing-vm" {
  source         = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
  network_id     = module.vpc.network_id
  subnet_zones   = var.default_zone
  subnet_ids     = [for zone in var.default_zone : try(module.vpc.subnet_id_by_zone[zone], null)]
  instance_name  = var.vm_instance_name.marketing
  instance_count = 2
  image_family   = var.vm_image_family_ubuntu.marketing
  public_ip      = var.vm_public_ip.marketing
  labels         = var.vm_labels.marketing

  metadata = {
    user-data          = data.template_file.cloudinit.rendered
    serial-port-enable = var.vm_metadata_serial_port.analytics
  }
}

module "analytics-vm" {
  source         = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
  network_id     = module.vpc.network_id
  subnet_zones   = var.default_zone
  subnet_ids     = [for zone in var.default_zone : try(module.vpc.subnet_id_by_zone[zone], null)]
  instance_name  = var.vm_instance_name.analytics
  instance_count = 1
  image_family   = var.vm_image_family_ubuntu.analytics
  public_ip      = var.vm_public_ip.analytics
  labels         = var.vm_labels.analytics

  metadata = {
    user-data          = data.template_file.cloudinit.rendered
    serial-port-enable = var.vm_metadata_serial_port.analytics
  }
}

data "template_file" "cloudinit" {
  template = file("./cloud-init.yml")

  vars     = {
    ssh-pub-key = local.ssh-pub-key,
    packages    = jsonencode(var.vm_cloud_init_packages)
  }
}

resource "random_password" "db_password" {
  length           = var.random_password_length
  special          = var.random_password_special
  upper            = var.random_password_upper
  lower            = var.random_password_lower
  numeric          = var.random_password_numeric
  override_special = var.random_password_override_special
}

module "mysql_cluster" {
  source     = "./mysql"
  name       = var.mysql_cluster_name
  zone       = var.mysql_cluster_zone
  network_id = module.vpc.network_id
  ha         = var.mysql_cluster_ha
  subnet_id  = module.vpc.subnet_id_by_zone[var.mysql_cluster_zone]
}

module "mysql_cluster_content" {
  source      = "./mysql_content"
  cluster_id  = module.mysql_cluster.cluster_id
  db_name     = var.mysql_cluster_db_name
  db_username = var.mysql_cluster_db_username
  db_password = length(var.manual_db_password) > 0 ? var.manual_db_password : random_password.db_password.result
}
