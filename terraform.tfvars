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
