variable "rgname" {}
variable "rgloc" {}

variable "vn" {}
variable "sn" {}

variable "ip" {
  type = list(string)
}

variable "ni" {
  type = map(any)
}

variable "kv" {}

variable "vms" {}

variable "bh" {}

variable "lb" {}
variable "blb" {}
variable "blip" {
  type = map(any)
}

variable "nsg" {}

variable "nsga" {
  type = map(any)
}