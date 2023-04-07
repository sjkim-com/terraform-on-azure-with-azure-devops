# Resource-2: Create Network Interface
resource "azurerm_network_interface" "web_linuxvm_nic" {
  name = "${local.resource_name_prefix}-web-linuxvm-nic"
  location = azurerm_resource_group.resourceGroup1.location
  resource_group_name = azurerm_resource_group.resourceGroup1.name

  ip_configuration {
    name = "web-linuxvm-ip-1"
    subnet_id = azurerm_subnet.web_subnet1.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.web_linuxvm_publicip.id
  }
}

