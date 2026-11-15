###cloud vars
#variable "token" {
#  type        = string
#  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
#}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-d"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}

###common vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "your_ssh_ed25519_key"
  description = "ssh-keygen -t ed25519"
}

###example vm_web var
variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "example vm_web_ prefix"
}

###example vm_db var
variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "example vm_db_ prefix"
}


variable "vm_instance_name" {
  type = map(string)
  default = {
    marketing = "marketing"
    analytics = "analytics"
  }
}

variable "vm_public_ip" {
  type = map(bool)
  default = {
    marketing = true
    analytics = true
  }
}

variable "vm_labels" {
  type = map(map(string))

  default = {
    marketing = {
      project = "marketing"
    }
    analytics = {
      project = "analytics"
    }
  }
}

variable "vm_metadata_serial_port" {
  type = map(number)

  default = {
    marketing = 1
    analytics = 1
  }
}

variable "vm_image_family_ubuntu" {
  type = map(string)
  default = {
    marketing = "ubuntu-2004-lts"
    analytics = "ubuntu-2004-lts"
  }
}

variable "vm_cloud_init_packages" {
  type = list(string)

  default = ["vim", "nginx"]
}
