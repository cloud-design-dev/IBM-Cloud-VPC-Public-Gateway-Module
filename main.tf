resource ibm_is_public_gateway gateway {
  name           = var.name
  vpc            = var.vpc
  zone           = var.zone
  resource_group = var.resource_group
  tags           = var.tags
  
}
