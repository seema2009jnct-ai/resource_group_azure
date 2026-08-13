

module "resource_group"{
source = "../../modules/azurerm_resource_group"
rgs = var.rgs1
}

module "virtual_network"{
    depends_on = [module.resource_group]
source = "../../modules/azurerm_virtual_network" 
   vnets = var.vnets1
}

module "subnet"{
  depends_on = [module.virtual_network]
  source = "../../modules/azurerm_subnet" 
  subnets  = var.subnets1
}

module "public_ip" {
    depends_on = [module.resource_group]
  source = "../../modules/azurerm_public_ip"
  pips = var.pips1
}

module "virtual_machine"{
  depends_on = [module.subnet , module.public_ip] 
   source = "../../modules/azurerm_virtual_machine"
   vms = var.vms1
}