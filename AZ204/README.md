# AZ-204: Developing Solutions for Microsoft Azure

## 概要

AZ-204は、Azureソリューションの設計、構築、テスト、保守を行う開発者向けの試験です。Azure のコンピューティング、ストレージ、セキュリティ、監視などのサービスを使用したアプリケーション開発に関する知識が求められます。

## 試験の主要トピック

- **Azure コンピューティングソリューションの開発** (25-30%)
  - Azure App Service Web Apps の実装
  - Azure Functions の実装
  - Azure Container Instances の開発
  - Azure Kubernetes Service の開発

- **Azure ストレージの開発** (15-20%)
  - Cosmos DB ストレージの開発
  - Blob ストレージの開発

- **Azure セキュリティの実装** (20-25%)
  - ユーザー認証と承認の実装
  - セキュアなクラウドソリューションの実装

- **Azure ソリューションの監視、トラブルシューティング、最適化** (15-20%)
  - キャッシュとコンテンツ配信の実装
  - アプリケーションの計装

- **Azure サービスとサードパーティサービスの接続と利用** (15-20%)
  - API Management の実装
  - イベントベースのソリューションの開発
  - メッセージベースのソリューションの開発

## デモシナリオ

### Terraform デモ

| シナリオ | 説明 | ディレクトリ |
|---------|------|--------------|
| App Service + SQL Database | Webアプリとデータベースのデプロイ | [terraform/app-service-sql/](./terraform/app-service-sql/) |
| Azure Functions | サーバーレス関数のインフラ構成 | [terraform/azure-functions/](./terraform/azure-functions/) |
| Cosmos DB | Cosmos DBアカウントとコンテナー | [terraform/cosmos-db/](./terraform/cosmos-db/) |
| API Management | API Managementサービスの構成 | [terraform/api-management/](./terraform/api-management/) |
| Container Apps | コンテナベースアプリのデプロイ | [terraform/container-apps/](./terraform/container-apps/) |

### 手動デモ

| シナリオ | 説明 | ファイル |
|---------|------|----------|
| App Service のデプロイ | ポータルからWebアプリをデプロイ | [manual-demos/01-app-service-deploy.md](./manual-demos/01-app-service-deploy.md) |
| Azure Functions の作成 | HTTPトリガー関数の作成と実行 | [manual-demos/02-azure-functions.md](./manual-demos/02-azure-functions.md) |
| Blob ストレージの操作 | .NETでBlobを操作するコード例 | [manual-demos/03-blob-storage.md](./manual-demos/03-blob-storage.md) |
| Cosmos DB の使用 | Cosmos DBへのデータ挿入と取得 | [manual-demos/04-cosmos-db.md](./manual-demos/04-cosmos-db.md) |
| Azure AD 認証 | アプリへのAzure AD認証の追加 | [manual-demos/05-azure-ad-auth.md](./manual-demos/05-azure-ad-auth.md) |
| Application Insights | アプリケーションの監視設定 | [manual-demos/06-app-insights.md](./manual-demos/06-app-insights.md) |
| Service Bus | メッセージングソリューションの実装 | [manual-demos/07-service-bus.md](./manual-demos/07-service-bus.md) |

## 推奨学習リソース

- [Microsoft Learn - AZ-204 学習パス](https://docs.microsoft.com/ja-jp/learn/certifications/exams/az-204)
- [Azure SDK for .NET](https://github.com/Azure/azure-sdk-for-net)
- [Azure SDK for Python](https://github.com/Azure/azure-sdk-for-python)
- [Azure SDK for JavaScript](https://github.com/Azure/azure-sdk-for-js)

## 注意事項

- コードサンプルは参考実装であり、本番環境では適切なエラーハンドリングとセキュリティ対策が必要です
- API キーやシークレットは環境変数や Azure Key Vault を使用して管理してください
- デプロイしたリソースは使用後に削除してください
