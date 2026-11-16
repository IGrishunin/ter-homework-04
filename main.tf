module "vpc" {
  source = "./vpc"
  name = var.vpc_name
  subnets = var.vpc_subnets
}

module "marketing-vm" {
  source         = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
  network_id     = module.vpc.network_id
  subnet_zones   = var.default_zone
  subnet_ids     = [module.vpc.subnet_id_by_zone[var.default_zone[${count.index}]]]
  instance_name  = var.vm_instance_name.marketing
  instance_count = 2
  image_family   = var.vm_image_family_ubuntu.marketing
  public_ip      = var.vm_public_ip.marketing

  labels = var.vm_labels.marketing

  metadata = {
    user-data          = data.template_file.cloudinit.rendered
    serial-port-enable = var.vm_metadata_serial_port.analytics
  }
}

module "analytics-vm" {
  source         = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
  network_id     = module.vpc.network_id
  subnet_zones   = var.default_zone
  subnet_ids     = [module.vpc.subnet_id_by_zone[var.default_zone]]
  instance_name  = var.vm_instance_name.analytics
  instance_count = 1
  image_family   = var.vm_image_family_ubuntu.analytics
  public_ip      = var.vm_public_ip.analytics

  labels = var.vm_labels.analytics

  metadata = {
    user-data          = data.template_file.cloudinit.rendered
    serial-port-enable = var.vm_metadata_serial_port.analytics
  }
}

data "template_file" "cloudinit" {
  template = file("./cloud-init.yml")

  vars = {
    ssh-pub-key = local.ssh-pub-key,
    packages = jsonencode(var.vm_cloud_init_packages)
  }
}
