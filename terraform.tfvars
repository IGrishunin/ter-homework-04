vm_instance_name = {
  marketing = "marketing"
  analytics = "analytics"
}

vm_public_ip = {
  marketing = true
  analytics = true
}

vm_labels = {
  marketing = {
    project = "marketing"
  }
  analytics = {
    project = "analytics"
  }
}

vm_metadata_serial_port = {
  marketing = 1
  analytics = 1
}

vm_image_family_ubuntu = {
  marketing = "ubuntu-2004-lts"
  analytics = "ubuntu-2004-lts"
}

vm_cloud_init_packages = ["vim", "nginx"]

vpc_subnets = [
  { zone = "ru-central1-a", cidr = "10.0.0.0/24"},
  { zone = "ru-central1-d", cidr = "10.0.1.0/24"},
  { zone = "ru-central1-e", cidr = "10.0.2.0/24"}
]

default_zone = ["ru-central1-d", "ru-central1-a"]

mysql_cluster_name = "cluster"

mysql_cluster_ha = true
 
mysql_cluster_zone = "ru-central1-a"
