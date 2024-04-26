# Resource Group
rgname = "Resource_Group"
rgloc  = "West Europe"
#Virtual Network
vn = {
  VN1 = {
    vname = "Virtual_Network"
    add   = ["10.2.0.0/16"]
  }
}
# Subnet
sn = {
  SN1 = {
    name = "FrontEnd_SUBNET"
    ad   = "10.2.4.0/24"
  },
  SN2 = {
    name = "BackEnd_SUBNET"
    ad   = "10.2.6.0/24"
  },
  SN3 = {
    name = "AzureBastionSubnet"
    ad   = "10.2.5.0/26"
  }
}
# PublicIP
ip = ["BASTION_IP", "LB_IP"]
# Network Interface Card
ni = {
  NI1 = {
    name  = "FNIC1"
    sname = "FrontEnd_SUBNET"
  },
  NI2 = {
    name  = "FNIC2"
    sname = "FrontEnd_SUBNET"
  },
  NI3 = {
    name  = "BNIC1"
    sname = "BackEnd_SUBNET"
  },
}
# Key Vault
kv = {
  kv = {
    name = "SubhojitKeyVaultwithSc"
    pwd = "password"
    password = "GQ4C9q`p[9A£"
  }
}
# Virtual Machine
vms = {
  VMS1 = {
    name = "FrontEnd-VM1"
    user = "adminuser"
    ni   = "FNIC1"
  },
  VMS2 = {
    name = "FrontEnd-VM2"
    user = "adminuser"
    ni   = "FNIC2"
  },
  VMS3 = {
    name = "BackEnd-VM1"
    user = "adminuser"
    ni   = "BNIC1"
  }
}
# Bastion Host
bh = "Bastion_Host"
# LoadBalancer
lb  = "Load_Balancer"
blb = "BackEnd_Pool"
blip = {
  BLIP1 = {
    name = "Virtual_Machine-1"
    vm   = "FrontEnd-VM1"
  },
  BLIP2 = {
    name = "Virtual_Machine-2"
    vm   = "FrontEnd-VM2"
  }
}
# Network Security Group
nsg = "Security_Group"
# Network Security Group Association with NIC
nsga = {
  nsga1 = {
    ni  = "FNIC1"
    nsg = "Security_Group"
  },
  nsga2 = {
    ni  = "FNIC2"
    nsg = "Security_Group"
  },
  nsga3 = {
    ni  = "BNIC1"
    nsg = "Security_Group"
  }
}
