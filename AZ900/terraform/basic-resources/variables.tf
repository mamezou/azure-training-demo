variable "resource_group_name" {
  description = "リソースグループの名前"
  type        = string
  default     = "rg-az900-demo"
}

variable "location" {
  description = "Azureリージョン"
  type        = string
  default     = "japaneast"
}

variable "storage_account_name" {
  description = "ストレージアカウントの名前（グローバルに一意である必要があります）"
  type        = string
  default     = "staz900demo"

  validation {
    condition     = length(var.storage_account_name) >= 3 && length(var.storage_account_name) <= 24
    error_message = "ストレージアカウント名は3-24文字である必要があります。"
  }

  validation {
    condition     = can(regex("^[a-z0-9]+$", var.storage_account_name))
    error_message = "ストレージアカウント名は小文字と数字のみ使用できます。"
  }
}
