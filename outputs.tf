output "parent_mg_id" {
  value = azurerm_management_group.mg_parent_group.id
}

output "child_mg_id" {
  value = azurerm_management_group.mg_child_group.id
}
