# AZ-305: Designing Microsoft Azure Infrastructure Solutions

## 概要

AZ-305は、Azureソリューションアーキテクトを対象とした試験で、コンピューティング、ネットワーク、ストレージ、セキュリティに関するソリューションの設計能力が求められます。

## 試験の主要トピック

- **ID、ガバナンス、監視ソリューションの設計** (25-30%)
  - ログとモニタリングのソリューション設計
  - 認証と承認のソリューション設計
  - ガバナンスソリューションの設計
  - ID とアクセスのセキュリティ

- **データストレージソリューションの設計** (25-30%)
  - データ統合ソリューションの設計
  - データストレージソリューションの推奨
  - 非リレーショナルデータストレージの設計
  - リレーショナルデータストレージの設計

- **ビジネス継続性ソリューションの設計** (10-15%)
  - バックアップとディザスタリカバリーソリューションの設計
  - 高可用性ソリューションの設計

- **インフラストラクチャソリューションの設計** (25-30%)
  - コンピューティングソリューションの設計
  - アプリケーションアーキテクチャの設計
  - 移行ソリューションの設計
  - ネットワークソリューションの設計

## デモシナリオ

### Terraform デモ

| シナリオ | 説明 | ディレクトリ | ステータス |
|---------|------|--------------|-----------|
| ハブ&スポークネットワーク | ハブ&スポークトポロジーの構築 | [terraform/hub-spoke-network/](./terraform/hub-spoke-network/) | 🚧 予定 |
| 高可用性Webアプリ | 複数リージョンのWebアプリ構成 | [terraform/ha-web-app/](./terraform/ha-web-app/) | 🚧 予定 |
| ハイブリッドネットワーク | VPN GatewayとExpressRouteの構成 | [terraform/hybrid-network/](./terraform/hybrid-network/) | 🚧 予定 |
| DRソリューション | Azure Site Recoveryによる DR 構成 | [terraform/disaster-recovery/](./terraform/disaster-recovery/) | 🚧 予定 |

### 手動デモ

| シナリオ | 説明 | ファイル | ステータス |
|---------|------|----------|-----------|
| アーキテクチャ設計演習 | 要件からアーキテクチャを設計 | [manual-demos/01-architecture-design.md](./manual-demos/01-architecture-design.md) | 🚧 予定 |
| ネットワーク設計 | VNetとサブネットの設計パターン | [manual-demos/02-network-design.md](./manual-demos/02-network-design.md) | 🚧 予定 |
| 高可用性設計 | 可用性セットとゾーンの使い分け | [manual-demos/03-high-availability.md](./manual-demos/03-high-availability.md) | 🚧 予定 |
| セキュリティ設計 | ゼロトラストモデルの実装 | [manual-demos/04-security-design.md](./manual-demos/04-security-design.md) | 🚧 予定 |
| コスト最適化 | アーキテクチャのコスト分析 | [manual-demos/05-cost-optimization.md](./manual-demos/05-cost-optimization.md) | 🚧 予定 |
| 移行計画 | オンプレミスからAzureへの移行戦略 | [manual-demos/06-migration-planning.md](./manual-demos/06-migration-planning.md) | 🚧 予定 |

## 推奨学習リソース

- [Microsoft Learn - AZ-305 学習パス](https://docs.microsoft.com/ja-jp/learn/certifications/exams/az-305)
- [Azure アーキテクチャセンター](https://docs.microsoft.com/ja-jp/azure/architecture/)
- [Azure Well-Architected Framework](https://docs.microsoft.com/ja-jp/azure/architecture/framework/)
- [Azure クラウド導入フレームワーク](https://docs.microsoft.com/ja-jp/azure/cloud-adoption-framework/)

## 注意事項

- アーキテクチャ設計では、要件に基づいた適切なトレードオフを考慮してください
- コスト、パフォーマンス、セキュリティ、運用のバランスを取ることが重要です
- 本番環境への適用前に、POC環境での検証を推奨します
