// Create a Resource Group in Azure

resource "azurerm_resource_group" "example" {
  name     = "rg-jenkins-demo"
  location = "East US"
}