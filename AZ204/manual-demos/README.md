# AZ-204 手動デモ手順書

このディレクトリには、AZ-204トレーニングで使用する手動デモの手順書が含まれています。

## 手順書一覧

| 番号 | タイトル | ファイル | 所要時間 |
|------|---------|----------|----------|
| 01 | App Service のデプロイ | [01-app-service-deploy.md](./01-app-service-deploy.md) | 25分 |
| 02 | Azure Functions の作成 | [02-azure-functions.md](./02-azure-functions.md) | 30分 |
| 03 | Blob ストレージの操作 | [03-blob-storage.md](./03-blob-storage.md) | 30分 |
| 04 | Cosmos DB の使用 | [04-cosmos-db.md](./04-cosmos-db.md) | 35分 |
| 05 | Azure AD 認証 | [05-azure-ad-auth.md](./05-azure-ad-auth.md) | 40分 |
| 06 | Application Insights | [06-app-insights.md](./06-app-insights.md) | 25分 |
| 07 | Service Bus | [07-service-bus.md](./07-service-bus.md) | 30分 |

## デモの特徴

AZ-204のデモは、実際のアプリケーション開発シナリオに基づいています：

- Azureサービスを使用したアプリケーション開発
- コードサンプルとベストプラクティス
- セキュリティとパフォーマンスの考慮事項

## 開発環境

デモの実施には以下のいずれかの開発環境を推奨します：

- Visual Studio Code + Azure拡張機能
- Visual Studio 2022
- Azure Cloud Shell

## 実施時の注意事項

- コードサンプルは学習用です。本番環境では適切なエラーハンドリングを追加してください
- APIキーやシークレットはKey Vaultまたは環境変数で管理してください
- サンプルコードのプログラミング言語は、受講者のスキルに応じて選択してください（.NET、Python、JavaScriptなど）
