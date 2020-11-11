resource ibm_is_public_gateway gateway {
  name           = "${var.name}-${var.zone}"-gateway"
  vpc            = var.vpc_id
  zone           = var.zone
  resource_group = data.ibm_resource_group.group.id
}
