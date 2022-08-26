# Create Azure RG
resource "azurerm_resource_group" "QuickCloudPOCsADF" {
  name     = "QuickCloudPOCsADF-RG"
  location = "WestUS3"
}

# Create Azure Data factory
resource "azurerm_data_factory" "QuickCloudPOCsADF" {
  name                = "QuickCloudPOCsADF"
  location            = azurerm_resource_group.QuickCloudPOCsADF.location
  resource_group_name = azurerm_resource_group.QuickCloudPOCsADF.name
}

#test
