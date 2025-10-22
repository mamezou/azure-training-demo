# AZ-104: Microsoft Azure Administrator

## 概要

AZ-104は、Azure環境の実装、管理、監視を担当するAzure管理者向けの試験です。コンピューティング、ストレージ、ネットワーク、セキュリティに関する深い知識が求められます。

## 試験の主要トピック

- **Azureの ID とガバナンスの管理** (15-20%)
  - Azure Active Directory の管理
  - ユーザーとグループの管理
  - サブスクリプションとガバナンスの管理

- **ストレージの実装と管理** (15-20%)
  - ストレージアカウントの管理
  - Blobストレージの管理
  - Azureファイルの管理
  - ストレージのセキュリティ

- **Azure コンピューティングリソースのデプロイと管理** (20-25%)
  - 仮想マシンの自動化
  - 仮想マシンの構成
  - Azure App Service の作成と構成
  - Azure Container Instances の管理

- **仮想ネットワークの構成と管理** (25-30%)
  - 仮想ネットワークの実装と管理
  - サイト間接続の構成
  - ネットワークトラフィックの管理
  - Azure Load Balancerの実装

- **Azure リソースの監視とバックアップ** (10-15%)
  - Azure Monitorの使用
  - Azure Backupの実装
  - Azure Site Recoveryの実装

## デモシナリオ

### Terraform デモ

| シナリオ | 説明 | ディレクトリ | ステータス |
|---------|------|--------------|-----------|
| VNetピアリング | 複数のVNet間のピアリング設定 | [terraform/vnet-peering/](./terraform/vnet-peering/) | 🚧 予定 |
| ロードバランサー | Azure Load Balancerの構成 | [terraform/load-balancer/](./terraform/load-balancer/) | 🚧 予定 |
| VMスケールセット | VM Scale Setsの自動スケーリング | [terraform/vmss/](./terraform/vmss/) | 🚧 予定 |
| Azure Backup | VMバックアップの構成 | [terraform/backup/](./terraform/backup/) | 🚧 予定 |

### 手動デモ

| シナリオ | 説明 | ファイル | ステータス |
|---------|------|----------|-----------|
| Azure ADユーザー管理 | ユーザーとグループの作成と管理 | [manual-demos/01-azure-ad-users.md](./manual-demos/01-azure-ad-users.md) | 🚧 予定 |
| RBACの構成 | ロールベースのアクセス制御の設定 | [manual-demos/02-rbac-configuration.md](./manual-demos/02-rbac-configuration.md) | 🚧 予定 |
| ストレージのレプリケーション | ストレージアカウントのレプリケーション設定 | [manual-demos/03-storage-replication.md](./manual-demos/03-storage-replication.md) | 🚧 予定 |
| ネットワークセキュリティグループ | NSGの作成と規則の設定 | [manual-demos/04-nsg-configuration.md](./manual-demos/04-nsg-configuration.md) | 🚧 予定 |
| Azure Monitor | メトリックとアラートの設定 | [manual-demos/05-azure-monitor.md](./manual-demos/05-azure-monitor.md) | 🚧 予定 |
| Azure Policy | ポリシーの作成と割り当て | [manual-demos/06-azure-policy.md](./manual-demos/06-azure-policy.md) | 🚧 予定 |

## 推奨学習リソース

- [Microsoft Learn - AZ-104 学習パス](https://docs.microsoft.com/ja-jp/learn/certifications/exams/az-104)
- [Azure 管理者向けドキュメント](https://docs.microsoft.com/ja-jp/azure/)

## 注意事項

- 管理操作を行う際は、必ず検証環境で実施してください
- リソースの削除を忘れずに行い、不要なコストが発生しないようにしてください
- 権限管理は慎重に行い、最小権限の原則に従ってください
