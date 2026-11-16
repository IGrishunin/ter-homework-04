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
