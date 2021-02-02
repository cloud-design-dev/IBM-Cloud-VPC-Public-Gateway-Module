resource ibm_is_public_gateway gateway {
  name           = var.name
  vpc            = var.vpc_id
  zone           = var.zone
  resource_group = var.resource_group_id
  floating_ip    = local.floating_ip
  tags           = var.tags
  
}

locals {
  floating_ip  = var.floating_ip_id != "" ? var.floating_ip = {id = floating_ip_id} : var.floating_ip = {address = floating_ip_address}
}
