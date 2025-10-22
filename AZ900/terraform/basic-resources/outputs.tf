output "resource_group_name" {
  description = "作成されたリソースグループの名前"
  value       = azurerm_resource_group.demo.name
}

output "resource_group_location" {
  description = "リソースグループのロケーション"
  value       = azurerm_resource_group.demo.location
}

output "storage_account_name" {
  description = "作成されたストレージアカウントの名前"
  value       = azurerm_storage_account.demo.name
}

output "storage_account_primary_blob_endpoint" {
  description = "ストレージアカウントのプライマリBlobエンドポイント"
  value       = azurerm_storage_account.demo.primary_blob_endpoint
}

output "storage_container_name" {
  description = "作成されたBlobコンテナーの名前"
  value       = azurerm_storage_container.demo.name
}
