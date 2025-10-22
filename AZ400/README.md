# AZ-400: Designing and Implementing Microsoft DevOps Solutions

## 概要

AZ-400は、DevOpsプラクティスを実装するDevOpsエンジニアを対象とした試験です。Azure DevOps ServicesとGitHubを使用したCI/CDパイプライン、インフラのコード化、構成管理、監視に関する知識が求められます。

## 試験の主要トピック

- **DevOpsの計画とデザイン** (20-25%)
  - DevOps変革計画の策定
  - プロジェクトの選択と構造化
  - チーム構造の設計
  - 統合とコミュニケーション戦略の設計

- **ソース管理の実装** (10-15%)
  - バージョン管理システムの管理
  - ブランチ戦略の実装
  - Git での作業

- **CI/CD パイプラインの実装** (40-45%)
  - ビルド戦略の設計と実装
  - リリース戦略の設計と実装
  - セキュアでコンプライアントに準拠したパイプライン
  - パッケージ管理戦略

- **依存関係の管理** (5-10%)
  - パッケージ管理の実装
  - パッケージセキュリティ

- **アプリケーションインフラの実装** (15-20%)
  - Infrastructure as Code の実装
  - コンテナ化戦略の実装
  - 構成管理の実装

- **継続的フィードバックの実装** (10-15%)
  - モニタリング戦略の推奨と実装
  - システムフィードバック機構の実装

## デモシナリオ

### Terraform デモ

| シナリオ | 説明 | ディレクトリ |
|---------|------|--------------|
| Azure DevOps環境 | Azure DevOps プロジェクトとリポジトリ | [terraform/azure-devops/](./terraform/azure-devops/) |
| Container Registry | ACRとイメージスキャン設定 | [terraform/container-registry/](./terraform/container-registry/) |
| AKS + DevOps | AKSクラスタとCI/CD統合 | [terraform/aks-devops/](./terraform/aks-devops/) |
| モニタリング基盤 | Log AnalyticsとApplication Insights | [terraform/monitoring/](./terraform/monitoring/) |

### 手動デモ

| シナリオ | 説明 | ファイル |
|---------|------|----------|
| Azure Pipelinesの作成 | CI/CDパイプラインの基本設定 | [manual-demos/01-azure-pipelines.md](./manual-demos/01-azure-pipelines.md) |
| YAML パイプライン | YAMLベースのパイプライン定義 | [manual-demos/02-yaml-pipeline.md](./manual-demos/02-yaml-pipeline.md) |
| ブランチ戦略 | Git Flow と GitHub Flow | [manual-demos/03-branch-strategy.md](./manual-demos/03-branch-strategy.md) |
| プルリクエストポリシー | コードレビュープロセスの設定 | [manual-demos/04-pr-policy.md](./manual-demos/04-pr-policy.md) |
| Infrastructure as Code | Terraformパイプラインの実装 | [manual-demos/05-iac-pipeline.md](./manual-demos/05-iac-pipeline.md) |
| コンテナデプロイ | DockerイメージのビルドとAKSデプロイ | [manual-demos/06-container-deploy.md](./manual-demos/06-container-deploy.md) |
| セキュリティスキャン | パイプラインへのセキュリティツール統合 | [manual-demos/07-security-scan.md](./manual-demos/07-security-scan.md) |
| モニタリング統合 | パイプラインとアプリのモニタリング | [manual-demos/08-monitoring.md](./manual-demos/08-monitoring.md) |

## 推奨学習リソース

- [Microsoft Learn - AZ-400 学習パス](https://docs.microsoft.com/ja-jp/learn/certifications/exams/az-400)
- [Azure DevOps ドキュメント](https://docs.microsoft.com/ja-jp/azure/devops/)
- [GitHub Actions ドキュメント](https://docs.github.com/ja/actions)
- [Terraform Azure Provider](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)

## 注意事項

- CI/CDパイプラインには機密情報を含めず、Azure Key VaultやSecretを使用してください
- パイプラインの実行には費用が発生する場合があります
- セキュリティスキャンツールの結果を必ず確認し、脆弱性に対処してください
- Infrastructure as Codeでは、stateファイルを適切に管理してください
