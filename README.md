# Задача 1
<img width="1346" height="345" alt="image" src="https://github.com/user-attachments/assets/af9a6fc1-3e3e-42e1-a094-d7231f3219d7" />

<img width="812" height="635" alt="image" src="https://github.com/user-attachments/assets/a0bc74b9-8e8f-4dd4-9aee-5dc66624fabf" />

Вывод ```terraform console```
```
mfc-admin@nb-grishunin:~/NETOLOGY/ter-homeworks/04/src$ terraform console
> module.marketing-vm
{
  "all" = [
    {
      "allow_recreate" = tobool(null)
      "allow_stopping_for_update" = true
      "boot_disk" = tolist([
        {
          "auto_delete" = true
          "device_name" = "fv4dbts33vsa1pnn8rqk"
          "disk_id" = "fv4dbts33vsa1pnn8rqk"
          "initialize_params" = tolist([
            {
              "block_size" = 4096
              "description" = ""
              "image_id" = "fd84np9sg3hrgaoisfnj"
              "kms_key_id" = ""
              "name" = ""
              "size" = 10
              "snapshot_id" = ""
              "type" = "network-hdd"
            },
          ])
          "mode" = "READ_WRITE"
        },
      ])
      "created_at" = "2026-11-15T20:23:26Z"
      "description" = "TODO: description; {{terraform yyy managed}}"
      "filesystem" = toset([])
      "folder_id" = "b1gjeu5fo05f0jh5mfug"
      "fqdn" = "marketing-0.ru-central1.internal"
      "gpu_cluster_id" = ""
      "hardware_generation" = tolist([
        {
          "generation2_features" = tolist([])
          "legacy_features" = tolist([
            {
              "pci_topology" = "PCI_TOPOLOGY_V2"
            },
          ])
        },
      ])
      "hostname" = "marketing-0"
      "id" = "fv4275dp9h057fmpv4nv"
      "labels" = tomap({
        "project" = "marketing"
      })
      "local_disk" = tolist([])
      "maintenance_grace_period" = ""
      "maintenance_policy" = tostring(null)
      "metadata" = tomap({
        "serial-port-enable" = "1"
        "user-data" = <<-EOT
        #cloud-config
        users:
          - name: ubuntu
            groups: sudo
            shell: /bin/bash
            sudo: ["ALL=(ALL) NOPASSWD:ALL"]
            ssh_authorized_keys:
              - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOmRn0dsEASZhy3tV6ZMLvffGNmZGXgdpT9+DMIAhPJb mfc-admin@nb-grishunin.mfcl.mfclnr.ru
        
        package_update: true
        package_upgrade: false
        packages: ["vim","nginx"]
        
        EOT
      })
      "metadata_options" = tolist([
        {
          "aws_v1_http_endpoint" = 1
          "aws_v1_http_token" = 2
          "aws_v2_http_endpoint" = 1
          "aws_v2_http_token" = 1
          "gce_http_endpoint" = 1
          "gce_http_token" = 1
        },
      ])
      "name" = "marketing-0"
      "network_acceleration_type" = "standard"
      "network_interface" = tolist([
        {
          "dns_record" = tolist([])
          "index" = 0
          "ip_address" = "10.0.1.32"
          "ipv4" = true
          "ipv6" = false
          "ipv6_address" = ""
          "ipv6_dns_record" = tolist([])
          "mac_address" = "d0:0d:23:95:b9:4c"
          "nat" = true
          "nat_dns_record" = tolist([])
          "nat_ip_address" = "153.51.165.88"
          "nat_ip_version" = "IPV4"
          "security_group_ids" = toset(null) /* of string */
          "subnet_id" = "fl89ihvfqkkeomhmpjj4"
        },
      ])
      "placement_policy" = tolist([
        {
          "host_affinity_rules" = tolist([])
          "placement_group_id" = ""
          "placement_group_partition" = 0
        },
      ])
      "platform_id" = "standard-v3"
      "reserved_instance_pool_id" = ""
      "resources" = tolist([
        {
          "core_fraction" = 20
          "cores" = 2
          "gpus" = 0
          "memory" = 1
        },
      ])
      "scheduling_policy" = tolist([
        {
          "preemptible" = true
        },
      ])
      "secondary_disk" = toset([])
      "service_account_id" = ""
      "status" = "running"
      "timeouts" = null /* object */
      "zone" = "ru-central1-d"
    },
  ]
  "external_ip_address" = [
    "153.51.165.88",
  ]
  "fqdn" = [
    "marketing-0.ru-central1.internal",
  ]
  "internal_ip_address" = [
    "10.0.1.32",
  ]
  "labels" = [
    tomap({
      "project" = "marketing"
    }),
  ]
  "network_interface" = [
    tolist([
      {
        "dns_record" = tolist([])
        "index" = 0
        "ip_address" = "10.0.1.32"
        "ipv4" = true
        "ipv6" = false
        "ipv6_address" = ""
        "ipv6_dns_record" = tolist([])
        "mac_address" = "d0:0d:23:95:b9:4c"
        "nat" = true
        "nat_dns_record" = tolist([])
        "nat_ip_address" = "153.51.165.88"
        "nat_ip_version" = "IPV4"
        "security_group_ids" = toset(null) /* of string */
        "subnet_id" = "fl89ihvfqkkeomhmpjj4"
      },
    ]),
  ]
}
```
# задача 2
Terraform docs
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >1.12.0 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [yandex_vpc_network.network](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_network) | resource |
| [yandex_vpc_subnet.subnet](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_cidr"></a> [cidr](#input\_cidr) | n/a | `list(string)` | <pre>[<br/>  "10.100.0.0/24"<br/>]</pre> | no |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | `"develop"` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | n/a | `string` | `"ru-central1-d"` | no |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_network_id"></a> [network\_id](#output\_network\_id) | Выводит id созданной сети |
| <a name="output_subnet"></a> [subnet](#output\_subnet) | Вывод всех параметров подсети |
| <a name="output_subnet_id"></a> [subnet\_id](#output\_subnet\_id) | Выводит id созданной подсети |

# Задача 3
1) Выводим **state list** командой ```terraform statelist```
```
data.template_file.cloudinit
module.analytics-vm.data.yandex_compute_image.my_image
module.analytics-vm.yandex_compute_instance.vm[0]
module.marketing-vm.data.yandex_compute_image.my_image
module.marketing-vm.yandex_compute_instance.vm[0]
module.marketing-vm.yandex_compute_instance.vm[1]
module.vpc.yandex_vpc_network.network
module.vpc.yandex_vpc_subnet.subnet["0"]
module.vpc.yandex_vpc_subnet.subnet["1"]
module.vpc.yandex_vpc_subnet.subnet["2"]
```
2) Удаляем модуль **vpc** ```terraform state rm module.vpc```
3) Удаляем модули **vm** ```terraform state rm module.marketing-vm``` и ```terraform state rm module.analytics-vm```
4) Импортируем обратно командами
```
terraform import module.vpc.yandex_vpc_network.network enpj33hqcnf3birigo0q
terraform import 'module.vpc.yandex_vpc_subnet.subnet["1"]' fl8jdi3vovmeat97fuht<img width="965" height="193" alt="image" src="https://github.com/user-attachments/assets/e51704d9-a0d6-4a3c-bef6-7164ab8dfe01" />

terraform import 'module.vpc.yandex_vpc_subnet.subnet["0"]' e9b9knhbus9a1d0m4jkd
terraform import 'module.vpc.yandex_vpc_subnet.subnet["2"]' ajcuacnritqksrgvhbr1
terraform import module.marketing-vm.yandex_compute_instance.vm[0] fv46pjvbrcb9agodihdc
terraform import module.marketing-vm.yandex_compute_instance.vm[1] fhmi8b85thgp2850n5a8
terraform import module.analytics-vm.yandex_compute_instance.vm[0] fv4qu4j0a1k7mshev6qb
```
P.S. такое количество импортов т.к. это задание выполнялось после **Задания 4**

P.S.S также при выполнении этого задания была изменена конечная конфигурация для **Задания 4**, а именно была изменена строка ```[for zone in var.default_zone : module.vpc.subnet_id_by_zone[zone]]``` на ```[for zone in var.default_zone : try(module.vpc.subnet_id_by_zone[zone], null)]```. Функция **try()** была добавлена из-за ошибок импорта подсетей. При импорте подсети без функции **try()** получал ошибку 

<img width="965" height="193" alt="image" src="https://github.com/user-attachments/assets/b3fa6062-8252-4a54-a35d-60cdfb5ae3fe" />

Если я правильно понял, то ошибка возникала из-за того, что **module.vm** ссылался на **module.vpc** и итерировался сразу по все зонам, которых не было в state файле.

Вывод ```terraform plan```

<img width="903" height="682" alt="image" src="https://github.com/user-attachments/assets/6d431679-60d3-4f66-be8c-140735eb214a" />

# Задание 4
В модуле **vpc** ресурс **yandex_vpc_subnet** был изменён на следующий код:
```
resource "yandex_vpc_subnet" "subnet" {
  for_each = { for id, subnet in var.subnets : id  => subnet }
  name           = "${var.name}-${each.key}"
  zone           = each.value.zone
  network_id     = yandex_vpc_network.network.id
  v4_cidr_blocks = [each.value.cidr]
}
```
Был добавлен **for_each** который итерируется по списку **var.subnets**, где **id** - это ключ, а именно номер объектов в списке 0;1;2 и т.д., а **subnet** - это значение **value.zone**; **value.cidr** ит.д. 
Также был добавлен **output "subnet_id_by_zone"**:
```
output "subnet_id_by_zone" {
  value = { for k, v in yandex_vpc_subnet.subnet: v.zone => v.id }
}
```
Здесь мы итерируемся по ресурсу **yandex_vpc_subnet.subnet**, где k - ключ, v - значение. В итоге мы делаем пару ключ значений, где зона соответствует id подсети(для удобного использования в root module)
Также в модуле создаём переменную 
```
variable "subnets" {
  type = list(object({
    zone = string
    cidr = string
  }))
}
```
А в **main.tf** в модуле **marketing-vm** изменяем **subnet_ids** на ```subnet_ids = [for zone in var.default_zone : try(module.vpc.subnet_id_by_zone[zone], null)]```. Здесь мы циклом проходимся по всем зонам из переменной **default_zone** и каждую зону подставляем в заранее созданный output в модуле **module.vpc.subnet_id_by_zone[zone]**, а так как в **output** модуля мы указали, что **id** подсети можем получить из названия зоны, то получаем необходимый **id**. Вся эта конструкция обёрнута в квадратные скобки, чтобы в итоге мы получили список, который требует модуль **vm**. Функция try() была добавлена для того, чтобы предотвратить ошибки при импорте подсетей(см.задание 3)
Результаты из консоли YC:

<img width="1291" height="255" alt="image" src="https://github.com/user-attachments/assets/14e14990-8265-43c3-aca1-b17048366942" />
<img width="1315" height="274" alt="image" src="https://github.com/user-attachments/assets/1ac62f47-51ec-49b2-8975-d1d0071f90b6" />

# Задача 5
1) Создал модуль mysql со следующим содержимым main.tf
```
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
```
Так как cluster требует как минимум один блок хоста, то один блок создаётся всегда, а второй динамический и появляется только если **var.ha = true**
Также создал переменные с дефолтами
```
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
```
В root модуле создал **mysql_cluster**:
```
module "mysql_cluster" {
  source = "./mysql"
  name          = var.mysql_cluster_name
  zone          = var.mysql_cluster_zone
  network_id    = module.vpc.network_id
  ha            = var.mysql_cluster_ha
  subnet_id     = module.vpc.subnet_id_by_zone[var.mysql_cluster_zone]
}
```
Для упрощения использовал подсеть и сеть, созданную в предыдущих заданиях через модуль **vpc**
Для применения изменений использовал следующие значения
```
mysql_cluster_name = "cluster"
mysql_cluster_ha = true
mysql_cluster_zone = "ru-central1-a"
```
Скриншот из YC

<img width="1311" height="410" alt="image" src="https://github.com/user-attachments/assets/a10c90bc-77c8-4888-b238-6e0ad9fb9d73" />

2) Добавил модуль **mysql_content**, в котором создал 2 ресурса: **yandex_mdb_mysql_database** и **yandex_mdb_mysql_user**
```
resource "yandex_mdb_mysql_database" "db" {
  cluster_id = var.cluster_id
  name       = var.db_name
}

resource "yandex_mdb_mysql_user" "user" {
  cluster_id = var.cluster_id
  name       = var.db_username
  password   = var.db_password
  permission {
    database_name = yandex_mdb_mysql_database.db.name
    roles         = ["ALL"]
  }
}
```
Также **variables.tf** для него:
```
variable "db_name" {
  type = string
  default = "my_db"
}

variable "cluster_id" {
  type = string
}

variable "db_username" {
  type = string
  default = "mysqluser"
}

variable "db_password" {
  type = string
}
```
Для того, чтобы при вызове этого модуля в рут модуле можно было узнать **id** кластера - в модуль **mysql** добавил output:
```
output "cluster_id" {
  value = yandex_mdb_mysql_cluster.cluster.id
}
```
В рут модуле предварительно был создан ресурс **random_password**
```
resource "random_password" "db_password" {
  length = var.random_password_length
  special = var.random_password_special
  upper = var.random_password_upper
  lower = var.random_password_lower
  numeric = var.random_password_numeric
  override_special = var.random_password_override_special
}
```
А также создан модуль **mysql_cluster_content**
```
module "mysql_cluster_content" {
  source = "./mysql_content"
  cluster_id = module.mysql_cluster.cluster_id
  db_name = var.mysql_cluster_db_name
  db_username = var.mysql_cluster_db_username
  db_password = length(var.manual_db_password) > 0 ? var.manual_db_password : random_password.db_password.result
}
```
В строке **db_password** используется результат random_password только если пароль не указан явно в переменной **var.manual_db_password**

3) План выполнения ```terraform apply``` с одним хостом в кластере**(ha=false)**

<img width="830" height="1156" alt="image" src="https://github.com/user-attachments/assets/bd1e3583-727d-4d0b-83f3-56a2ab6ef67b" />

Вывод из консоли YC

<img width="1836" height="514" alt="image" src="https://github.com/user-attachments/assets/cbece07b-afb6-4dcc-ad8c-0f04164bbe6c" />

План создания БД и пользователя:

<img width="1116" height="976" alt="image" src="https://github.com/user-attachments/assets/17b67593-6554-44bf-bfcb-2a26658fd3d0" />

Вывод из консоли YC

<img width="1817" height="495" alt="image" src="https://github.com/user-attachments/assets/c7b95bfa-91d1-4bb2-aabd-f9d1f74baa6e" />

Вывод плана после изменения переменной **ha** с false на true

<img width="1674" height="634" alt="1" src="https://github.com/user-attachments/assets/86e1109b-2c02-4bf4-a8c5-94aa6cdd17d3" />

Вывод YC

<img width="1840" height="553" alt="160ca2c0-d306-4c16-8740-25aa11694ed3" src="https://github.com/user-attachments/assets/ec32478c-6e35-4b36-9da5-3d77584bf00a" />

# Задача 6
Создал из примера main.tf с модулем s3:
```
resource "random_string" "unique_id" {
  length  = 8
  upper   = false
  lower   = true
  numeric = true
  special = false
}

module "s3" {
  source = "git::https://github.com/terraform-yc-modules/terraform-yc-s3.git?ref=1.0.4"

  max_size = var.max_size
  bucket_name = "simple-bucket-${random_string.unique_id.result}"
  versioning = {
    enabled = true
  }
}
```
Применил

<img width="1353" height="1193" alt="image" src="https://github.com/user-attachments/assets/1a84ec59-1272-4f74-8107-df3ea4f72cd7" />

YC

<img width="1442" height="460" alt="image" src="https://github.com/user-attachments/assets/dda73b64-d56c-4698-898a-4e9c5afcc0f0" />

