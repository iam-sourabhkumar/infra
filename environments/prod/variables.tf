variable "rgs" {
  type = map(any)
}

variable "vnets" {
  type = map(any)
}

variable "subnets" {
  type = map(any)
}

variable "public_ips" {
  type = map(any)
}

variable "vms" {
  type = map(any)
}

variable "bastions" {
  type = map(any)
}

variable "app_gateways" {
  type = map(any)
}

variable "load_balancers" {
  type = map(any)
}

variable "key_vaults" {
  type = map(any)
}