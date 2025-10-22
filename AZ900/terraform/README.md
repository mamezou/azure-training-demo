# AZ-900 Terraform デモ

このディレクトリには、AZ-900トレーニングで使用するTerraformテンプレートが含まれています。

## 前提条件

- [Terraform](https://www.terraform.io/downloads) 1.0以降
- [Azure CLI](https://docs.microsoft.com/ja-jp/cli/azure/install-azure-cli)
- Azureサブスクリプション

## セットアップ

### 1. Azure CLIでログイン

```bash
az login
az account set --subscription "your-subscription-id"
```

### 2. 環境変数の設定（オプション）

```bash
export ARM_SUBSCRIPTION_ID="your-subscription-id"
export ARM_TENANT_ID="your-tenant-id"
```

## 使用方法

各デモシナリオのディレクトリに移動して、以下のコマンドを実行します：

### 初期化

```bash
terraform init
```

### 実行計画の確認

```bash
terraform plan
```

### リソースのデプロイ

```bash
terraform apply
```

実行時に `yes` と入力して確認します。

### リソースの削除

```bash
terraform destroy
```

実行時に `yes` と入力して確認します。

## 利用可能なデモシナリオ

| シナリオ | 説明 |
|---------|------|
| basic-resources | リソースグループとストレージアカウントの基本的な作成 |
| virtual-network | VNetとサブネットの構築 |
| virtual-machine | 仮想マシンのデプロイ |

## ベストプラクティス

- デモ実行前に必ず `terraform plan` で変更内容を確認
- デモ終了後は必ず `terraform destroy` でリソースを削除
- 本番環境とは別のサブスクリプションを使用
- Terraformのstateファイルは適切に管理（本番環境ではAzure Storageなどに保存）

## トラブルシューティング

### 認証エラーが発生する場合

```bash
az login
az account show
```

### リソースがすでに存在するエラー

```bash
# 既存のstateを削除してクリーンな状態にする
rm -rf .terraform terraform.tfstate*
terraform init
```

## 注意事項

- これらのテンプレートはデモ・学習用です
- 本番環境で使用する場合は、セキュリティとコンプライアンスの要件に応じて適切に修正してください
- コストが発生するリソースもあるため、使用後は必ず削除してください
