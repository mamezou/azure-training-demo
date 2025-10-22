# AZ-900: Microsoft Azure Fundamentals

## 概要

AZ-900は、クラウドの概念、Azureのサービス、Azure のワークロード、Azure のセキュリティとプライバシー、Azure の価格とサポートに関する基礎知識を検証する試験です。

## 試験の主要トピック

- **クラウドの概念** (25-30%)
  - クラウドコンピューティングの利点
  - クラウドサービスの種類（IaaS、PaaS、SaaS）
  - クラウドの展開モデル（パブリック、プライベート、ハイブリッド）

- **Azureのコアサービス** (25-30%)
  - Azureのコアアーキテクチャコンポーネント
  - Azureのコアサービスと製品
  - Azureのソリューション
  - Azure管理ツール

- **セキュリティ、プライバシー、コンプライアンス、信頼** (25-30%)
  - Azureのネットワークセキュリティ
  - Azureのアイデンティティサービス
  - セキュリティツールと機能
  - Azureのガバナンス機能
  - プライバシー、コンプライアンス、データ保護の標準

- **Azure の価格とサポート** (20-25%)
  - Azureのサブスクリプション
  - コストの計画と管理
  - Azureのサポートオプション
  - サービスライフサイクル

## デモシナリオ

### Terraform デモ

| シナリオ | 説明 | ディレクトリ | ステータス |
|---------|------|--------------|-----------|
| 基本的なリソースグループとストレージ | リソースグループとストレージアカウントの作成 | [terraform/basic-resources/](./terraform/basic-resources/) | ✅ 実装済み |
| 仮想ネットワークの構築 | VNetとサブネットの基本構成 | [terraform/virtual-network/](./terraform/virtual-network/) | 🚧 予定 |
| 仮想マシンのデプロイ | 基本的なLinux/Windows VMの作成 | [terraform/virtual-machine/](./terraform/virtual-machine/) | 🚧 予定 |

### 手動デモ

| シナリオ | 説明 | ファイル | ステータス |
|---------|------|----------|-----------|
| Azureポータルツアー | Azureポータルの基本操作と画面構成 | [manual-demos/01-portal-tour.md](./manual-demos/01-portal-tour.md) | ✅ 実装済み |
| リソースグループの管理 | リソースグループの作成、タグ付け、削除 | [manual-demos/02-resource-groups.md](./manual-demos/02-resource-groups.md) | ✅ 実装済み |
| ストレージアカウントの操作 | ストレージアカウントとBlobの基本操作 | [manual-demos/03-storage-account.md](./manual-demos/03-storage-account.md) | 🚧 予定 |
| 仮想マシンの作成 | ポータルからVMを作成して接続 | [manual-demos/04-virtual-machine.md](./manual-demos/04-virtual-machine.md) | 🚧 予定 |
| コスト管理 | Azure Cost Management の使用方法 | [manual-demos/05-cost-management.md](./manual-demos/05-cost-management.md) | 🚧 予定 |

## 推奨学習リソース

- [Microsoft Learn - AZ-900 学習パス](https://docs.microsoft.com/ja-jp/learn/certifications/exams/az-900)
- [Azure ドキュメント](https://docs.microsoft.com/ja-jp/azure/)

## 注意事項

- デモを実行する際は、リソースの削除を忘れずに行い、不要なコストが発生しないようにしてください
- 本番環境とは別の検証用サブスクリプションの使用を推奨します
