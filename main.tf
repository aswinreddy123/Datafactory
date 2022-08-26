# ARM provider block -rekhu
provider "azurerm" {
  version = "~>2.0"
  features {}
}
# Terraform backend configuration block -precreated
terraform {
  backend "azurerm" {
    resource_group_name  = "TerraformDemo"
    storage_account_name = "terraformcodedemo"
    container_name       = "tfstatefile"
    key                  = "dev.terraform.tfstate"
  }
}

#test