variable vpc_id {}
variable name {}
variable zone {}
variable resource_group_id {}
variable floating_ip {
  description = "Floating IP to assign to Public Gateway."
  type        = string
  default     = ""
}
