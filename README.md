# Azure Training Demo

Azureのトレーニングで使用するデモの手順やテンプレートをまとめるリポジトリです。

## 目的

このリポジトリは以下を目的として作成されています：

- **受講者への共有**：トレーニング受講者が参照しやすい形式でデモ手順を提供
- **講師のデモ実施**：講師がスムーズにデモを実施できるようなテンプレートと手順書を提供
- **日本語対応**：日本語での分かりやすい説明と手順

## 対象トレーニング

以下のAzure認定試験のトレーニングをカバーしています：

| 試験 | 説明 | ディレクトリ |
|------|------|--------------|
| **AZ-900** | Microsoft Azure Fundamentals | [AZ900/](./AZ900/) |
| **AZ-104** | Microsoft Azure Administrator | [AZ104/](./AZ104/) |
| **AZ-204** | Developing Solutions for Microsoft Azure | [AZ204/](./AZ204/) |
| **AZ-305** | Designing Microsoft Azure Infrastructure Solutions | [AZ305/](./AZ305/) |
| **AZ-400** | Designing and Implementing Microsoft DevOps Solutions | [AZ400/](./AZ400/) |

## リポジトリ構成

各トレーニングコースのディレクトリには以下が含まれます：

```
AZ[試験番号]/
├── terraform/          # Terraformテンプレート
│   ├── [シナリオ名]/   # 各デモシナリオのTerraformコード
│   └── README.md       # Terraform使用方法
└── manual-demos/       # 手動デモ手順書
    ├── [シナリオ名].md # 各デモの手順書
    └── README.md       # 手動デモ一覧
```

## 使い方

### Terraformを使用したデモ

1. 対象トレーニングのディレクトリに移動
2. `terraform/`配下の該当シナリオを選択
3. README.mdの手順に従ってデプロイ

### 手動デモ

1. 対象トレーニングのディレクトリに移動
2. `manual-demos/`配下の該当手順書を選択
3. 手順書に従ってAzureポータルで操作

## 前提条件

### Terraformデモの実行に必要なもの

- Azureサブスクリプション
- [Terraform](https://www.terraform.io/downloads) (推奨バージョン: 1.0以降)
- [Azure CLI](https://docs.microsoft.com/ja-jp/cli/azure/install-azure-cli)
- Azure CLIでの認証済み環境

### 手動デモの実行に必要なもの

- Azureサブスクリプション
- Azureポータルへのアクセス権限

## 開始方法

### Azure CLIでの認証

```bash
# Azure CLIでログイン
az login

# 使用するサブスクリプションを設定
az account set --subscription "your-subscription-id"
```

### Terraformの初期化

```bash
# デモディレクトリに移動
cd AZ[試験番号]/terraform/[シナリオ名]

# Terraformの初期化
terraform init

# 実行計画の確認
terraform plan

# リソースのデプロイ
terraform apply
```

## セキュリティのベストプラクティス

### 認証情報の管理

- **Azure CLI認証を推奨**: ブラウザベースの安全な認証フロー
- **環境変数の使用**: APIキーやシークレットは環境変数で管理
- **Key Vault の活用**: 本番環境では Azure Key Vault を使用
- **検証環境の使用**: 本番環境のサブスクリプションは使用しない

### Terraform使用時の注意

- `.tfvars` ファイルは `.gitignore` に含まれています（機密情報を含むため）
- `terraform.tfvars.example` をコピーして使用してください
- State ファイルには機密情報が含まれる可能性があるため、適切に管理してください

### コスト管理

- デモ終了後は必ずリソースを削除してください
- Azure Cost Management でアラートを設定することを推奨
- 予期しない課金を防ぐため、定期的にリソースを確認してください

## コントリビューション

新しいデモシナリオの追加や既存の改善については、プルリクエストを歓迎します。詳細は[CONTRIBUTING.md](./CONTRIBUTING.md)を参照してください。

## 参考資料

- [Microsoft Learn](https://docs.microsoft.com/ja-jp/learn/)
- [Microsoft公式トレーニングリポジトリ](https://github.com/MicrosoftLearning)

## ライセンス

このリポジトリはMITライセンスの下で公開されています。
