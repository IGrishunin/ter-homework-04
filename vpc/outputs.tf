output "network_id" {
  value = yandex_vpc_network.network.id
  description = "Выводит id созданной сети"
}

output "subnet_id" {
  value = { for k,v in yandex_vpc_subnet.subnet: k => v.id }
  description = "Выводит id созданной подсети"
}

output "subnet_id_by_zone" {
  value = { for k, v in yandex_vpc_subnet.subnet: v.zone => v.id }
}

#output "subnet" {
#  value = yandex_vpc_subnet.subnet
#  description = "Вывод всех параметров подсети"
#}
