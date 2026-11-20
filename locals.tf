locals {
  ssh-pub-key = file(pathexpand("~/.ssh/id_ed25519.pub"))

  security_group_ids = [
    for name in var.mysql_cluster_security_groups: module.vpc.security_id_by_name[name]
  ]
}
