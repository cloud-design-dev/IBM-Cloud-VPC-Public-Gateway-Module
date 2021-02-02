variable vpc_id {}
variable name {}
variable zone {}
variable resource_group_id {}
variable floating_ip_id {
  description = "ID of the floating IP to assign to Public Gateway."
  type        = string
  default     = ""
}

variable floating_ip_address {
  description = "Address of the floating IP to assign to Public Gateway."
  type        = string
  default     = ""
}
