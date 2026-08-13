terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }
  #  backend "azurerm" {
  #   resource_group_name = "devops_rg"
  #   storage_account_name = "devopskaaccount"                              
  #   container_name       = "tfstate"                                   
  #   key                  ="rgs.tfstate"                
  # }

}

provider "azurerm" {
  features{
  }
}