# AZ-104 手動デモ手順書

このディレクトリには、AZ-104トレーニングで使用する手動デモの手順書が含まれています。

## 手順書一覧

| 番号 | タイトル | ファイル | 所要時間 |
|------|---------|----------|----------|
| 01 | Azure ADユーザー管理 | [01-azure-ad-users.md](./01-azure-ad-users.md) | 20分 |
| 02 | RBACの構成 | [02-rbac-configuration.md](./02-rbac-configuration.md) | 25分 |
| 03 | ストレージのレプリケーション | [03-storage-replication.md](./03-storage-replication.md) | 20分 |
| 04 | ネットワークセキュリティグループ | [04-nsg-configuration.md](./04-nsg-configuration.md) | 30分 |
| 05 | Azure Monitor | [05-azure-monitor.md](./05-azure-monitor.md) | 25分 |
| 06 | Azure Policy | [06-azure-policy.md](./06-azure-policy.md) | 30分 |

## デモの特徴

AZ-104のデモは、Azure管理者として実際の運用で必要となるタスクを中心に構成されています：

- ID とアクセス管理
- ストレージとバックアップ
- ネットワーク構成とセキュリティ
- 監視とガバナンス

## 実施時の注意事項

- 管理操作を行うため、本番環境では実施しないでください
- 権限管理は慎重に行い、最小権限の原則に従ってください
- ポリシーの適用は影響範囲を確認してから実施してください
