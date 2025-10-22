# AZ-305 Terraform デモ

このディレクトリには、AZ-305トレーニングで使用するTerraformテンプレートが含まれています。

## 前提条件

- [Terraform](https://www.terraform.io/downloads) 1.0以降
- [Azure CLI](https://docs.microsoft.com/ja-jp/cli/azure/install-azure-cli)
- Azureサブスクリプション
- アーキテクチャ設計の基礎知識

## 利用可能なデモシナリオ

| シナリオ | 説明 | 難易度 |
|---------|------|--------|
| hub-spoke-network | ハブ&スポークトポロジーの構築 | 高 |
| ha-web-app | 複数リージョンのWebアプリ構成 | 高 |
| hybrid-network | VPN GatewayとExpressRouteの構成 | 高 |
| disaster-recovery | Azure Site Recoveryによる DR 構成 | 高 |

## 使用方法

AZ-305のデモは複雑なアーキテクチャパターンを含むため、デプロイ前に設計を十分に理解してください。

```bash
cd [シナリオ名]
# まずREADME.mdで設計を確認
cat README.md

terraform init
terraform plan
terraform apply
```

## 注意事項

- AZ-305のシナリオは、エンタープライズレベルのアーキテクチャを扱います
- デプロイには長時間（30分〜1時間以上）かかる場合があります
- 複数のリージョンを使用するため、コストが高くなる可能性があります
- 一部のリソース（ExpressRouteなど）は追加の構成や契約が必要です
- デモ実行前にコストを見積もることを強く推奨します
