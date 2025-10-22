# AZ-104 Terraform デモ

このディレクトリには、AZ-104トレーニングで使用するTerraformテンプレートが含まれています。

## 前提条件

- [Terraform](https://www.terraform.io/downloads) 1.0以降
- [Azure CLI](https://docs.microsoft.com/ja-jp/cli/azure/install-azure-cli)
- Azureサブスクリプション
- Azure管理者としての基本的な知識

## 利用可能なデモシナリオ

| シナリオ | 説明 | 難易度 |
|---------|------|--------|
| vnet-peering | 複数のVNet間のピアリング設定 | 中 |
| load-balancer | Azure Load Balancerの構成 | 中 |
| vmss | VM Scale Setsの自動スケーリング | 高 |
| backup | VMバックアップの構成 | 高 |

## 使用方法

基本的な使用方法は各シナリオのディレクトリ内のREADME.mdを参照してください。

```bash
cd [シナリオ名]
terraform init
terraform plan
terraform apply
```

## 注意事項

- AZ-104のデモは、より複雑な構成を含むため、実行前に必ず内容を確認してください
- 一部のリソース（Load Balancer、VMSSなど）は起動までに時間がかかります
- コストが発生するリソースが含まれるため、使用後は必ず削除してください
