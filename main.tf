locals {
  environment = var.env_name
  tags        = var.tags
}

data "azurerm_subscription" "current" {
}

resource "azurerm_management_group" "mg_parent_group" {
  display_name     = "mg-${var.display_name[0]}-${local.environment}"
  subscription_ids = [data.azurerm_management_group.current.subscription_id]

  tags = local.tags
}

resource "azurerm_management_group" "mg_child_group" {
  display_name               = "mg-${var.display_name[1]}-${local.environment}"
  parent_management_group_id = azurerm_management_group.mg_parent_group.id
  subscription_ids           = [data.azurerm_management_group.current.subscription_id]

  tags = local.tags
}
