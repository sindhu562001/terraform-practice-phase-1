variable "network_name" {
  type = string
}

variable "subnets" {
  description = "map of subnet objects"
  type = map(object({
    region = string
    ip_cidr_range = string
  }))
}