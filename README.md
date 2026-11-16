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
P.S. такое количество импортов т.к. это задание выполнялось после Задания 4
P.S.S также при выполнении этого задания была изменена конечная конфигурация для Задания 4, а именно была изменена строка ```[for zone in var.default_zone : module.vpc.subnet_id_by_zone[zone]]``` на ```[for zone in var.default_zone : try(module.vpc.subnet_id_by_zone[zone], null)]```. Функция try() была добавлена из-за ошибок импорта подсетей. При импорте подсети без функции try() получал ошибку 
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



