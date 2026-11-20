# module vm

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
default_zone = ["ru-central1-d", "ru-central1-a"]



# module vpc
vpc_subnets = [
  { zone = "ru-central1-a", cidr = "10.0.0.0/24"},
  { zone = "ru-central1-d", cidr = "10.0.1.0/24"},
  { zone = "ru-central1-e", cidr = "10.0.2.0/24"}
]

security_groups = {
  sec1 = {
    ingress = [
      {
        protocol       = "TCP"
        description    = "разрешить входящий ssh"
        v4_cidr_blocks = ["0.0.0.0/0"]
        port           = 22
      },
      { 
        protocol       = "TCP"
        description    = "разрешить входящий  http"
        v4_cidr_blocks = ["0.0.0.0/0"]
        port           = 80
      },
      { 
        protocol       = "TCP"
        description    = "разрешить входящий https"
        v4_cidr_blocks = ["0.0.0.0/0"]
        port           = 443
      }
    ]
    egress = [
      {
        protocol       = "TCP"
        description    = "разрешить весь исходящий трафик"
        v4_cidr_blocks = ["0.0.0.0/0"]
        from_port      = 0
        to_port        = 65365
      }
    ]
  }
  sec-database = { 
    ingress = [
      {
        protocol       = "TCP"
        description    = "разрешить входящий ssh"
        v4_cidr_blocks = ["0.0.0.0/0"]
        port           = 22
      },
      { 
        protocol       = "TCP"
        description    = "разрешить входящий трафик на СУБД"
        v4_cidr_blocks = ["0.0.0.0/0"]
        port           = 3306
      }

    ]
    egress = [
      {
        protocol       = "TCP"
        description    = "разрешить весь исходящий трафик"
        v4_cidr_blocks = ["0.0.0.0/0"]
        from_port      = 0
        to_port        = 65365
      }
    ]
  }
}


# mysql
mysql_cluster_name        = "example"
mysql_cluster_ha          = true
mysql_cluster_zone        = "ru-central1-a"
mysql_cluster_db_name     = "test"
mysql_cluster_db_username = "app"
mysql_cluster_security_groups = ["sec-database"]

# random_password
random_password_length  = 16
random_password_special = true
random_password_upper   = true
random_password_lower   = true
random_password_numeric = true
