resource ibm_is_public_gateway gateway {
  count          = length(var.zone)
  name           = "${var.name}-gateway-zone-${count.index + 1}"
  vpc            = var.vpc_id
  zone           = var.zone[count.index]
  resource_group = data.ibm_resource_group.group.id
}
