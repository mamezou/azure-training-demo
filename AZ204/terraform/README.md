# AZ-204 Terraform デモ

このディレクトリには、AZ-204トレーニングで使用するTerraformテンプレートが含まれています。

## 前提条件

- [Terraform](https://www.terraform.io/downloads) 1.0以降
- [Azure CLI](https://docs.microsoft.com/ja-jp/cli/azure/install-azure-cli)
- Azureサブスクリプション
- 開発ツール（Visual Studio Code、Azure SDKなど）

## 利用可能なデモシナリオ

| シナリオ | 説明 | 難易度 |
|---------|------|--------|
| app-service-sql | Webアプリとデータベースのデプロイ | 中 |
| azure-functions | サーバーレス関数のインフラ構成 | 中 |
| cosmos-db | Cosmos DBアカウントとコンテナー | 中 |
| api-management | API Managementサービスの構成 | 高 |
| container-apps | コンテナベースアプリのデプロイ | 高 |

## 使用方法

各シナリオのインフラをデプロイした後、アプリケーションコードのデプロイが必要です。
詳細は各シナリオのREADME.mdを参照してください。

```bash
cd [シナリオ名]
terraform init
terraform plan
terraform apply

# アプリケーションのデプロイは各シナリオの手順に従う
```

## 注意事項

- AZ-204はアプリケーション開発に焦点を当てているため、インフラのデプロイ後にアプリケーションコードのデプロイが必要です
- 一部のサービス（API Management、Cosmos DBなど）は起動に時間がかかります
- 開発環境のセットアップも含めて時間を見積もってください
