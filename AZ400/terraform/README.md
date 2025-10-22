# AZ-400 Terraform デモ

このディレクトリには、AZ-400トレーニングで使用するTerraformテンプレートが含まれています。

## 前提条件

- [Terraform](https://www.terraform.io/downloads) 1.0以降
- [Azure CLI](https://docs.microsoft.com/ja-jp/cli/azure/install-azure-cli)
- Azureサブスクリプション
- Azure DevOps組織またはGitHubアカウント
- DevOpsの基礎知識

## 利用可能なデモシナリオ

| シナリオ | 説明 | 難易度 |
|---------|------|--------|
| azure-devops | Azure DevOps プロジェクトとリポジトリ | 中 |
| container-registry | ACRとイメージスキャン設定 | 中 |
| aks-devops | AKSクラスタとCI/CD統合 | 高 |
| monitoring | Log AnalyticsとApplication Insights | 中 |

## 使用方法

AZ-400のTerraformテンプレートは、DevOpsインフラの基盤を構築します。
パイプラインの設定は手動またはYAML定義で行います。

```bash
cd [シナリオ名]
terraform init
terraform plan
terraform apply

# パイプラインの設定は各シナリオの手順に従う
```

## Infrastructure as Code のベストプラクティス

- **バージョン管理**: すべてのTerraformコードをGitで管理
- **モジュール化**: 再利用可能なモジュールを作成
- **リモートState**: Azure Storageなどにstateを保存
- **CI/CD統合**: TerraformをCI/CDパイプラインに組み込む

## 注意事項

- Azure DevOpsの一部機能は追加の組織設定が必要です
- AKSクラスタの起動には10-15分程度かかります
- パイプラインの実行には分単位で課金される場合があります
- Infrastructure as Codeでは、手動変更を避け、すべてコードで管理してください
