module "subhoRG" {
  source = "../Modules/1RG"
  rgname = var.rgname
  rgloc  = var.rgloc
}

module "VnetandSubnet" {
  source     = "../Modules/2VnetSubnet"
  vn         = var.vn
  sn         = var.sn
  depends_on = [module.subhoRG]
}

module "pip" {
  source     = "../Modules/3PublicIP"
  ip         = var.ip
  depends_on = [module.VnetandSubnet]
}

module "nic" {
  source     = "../Modules/4NIC"
  ni         = var.ni
  depends_on = [module.subhoRG, module.VnetandSubnet]
}

module "kv" {
  source     = "../Modules/5KV"
  kv         = var.kv
  depends_on = [module.subhoRG]
}

module "vm" {
  source     = "../Modules/6VM"
  vms        = var.vms
  depends_on = [module.subhoRG, module.nic, module.kv]
}

module "bastion" {
  source     = "../Modules/7Bastion"
  bh         = var.bh
  depends_on = [module.subhoRG, module.VnetandSubnet, module.pip]
}

module "lb" {
  source     = "../Modules/8LB"
  lb         = var.lb
  blb        = var.blb
  blip       = var.blip
  depends_on = [module.subhoRG, module.vm]
}

module "nsg" {
  source     = "../Modules/9NSG"
  nsg        = var.nsg
  depends_on = [module.subhoRG, module.nic]
}

module "nsga" {
  source     = "../Modules/10NSGAssociation"
  nsga       = var.nsga
  depends_on = [module.subhoRG, module.nic, module.nsg]
}