module "rg" {
    source = "../Azurerm_Resource_group"
    rg= var.rg
  
}
module "stg" {
    depends_on = [ module.rg ]
    source = "../Azurerm_Storage_account"
    stg= var.stg

    
  
}

module "vnet" {
    depends_on = [ module.stg ]
    source = "../Azurerm_Virtual_Network"
    vnet= var.vnet
  
}

module "subnet" {
    depends_on = [ module.vnet ]
    source = "../Azurerm_Sbnet"
    snet= var.snet
  
}