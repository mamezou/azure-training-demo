# 基本的なリソースのデモ

このデモでは、Azureの最も基本的なリソースを作成します：

- リソースグループ
- ストレージアカウント
- Blobコンテナー

## 学習目標

- Azureリソースグループの概念を理解する
- ストレージアカウントの作成方法を学ぶ
- Terraformの基本的な使い方を理解する

## 前提条件

- Azure CLI がインストールされている
- Terraform 1.0以降がインストールされている
- Azureサブスクリプションへのアクセス権

## ⚠️ 重要な注意事項

### コストについて
このデモでは以下のリソースを作成します：
- **リソースグループ**: 無料
- **ストレージアカウント（Standard LRS）**: 約 ¥2-3/GB/月 + トランザクション費用

**推奨事項**：
- デモ終了後は必ず `terraform destroy` でリソースを削除してください
- 削除を忘れると継続的に課金される可能性があります
- 予期しない課金を防ぐため、Azure Cost Management でアラートを設定することを推奨します

### ストレージアカウント名について
- ストレージアカウント名はAzure全体で**グローバルに一意**である必要があります
- デフォルト値 `staz900demo` は既に使用されている可能性が高いため、**必ずカスタマイズしてください**
- 推奨命名規則: `st[会社名/イニシャル][用途][ランダム数字]` (例: `stmamezoudemo12345`)

## 手順

### 1. Azure CLIでログイン

```bash
az login
az account set --subscription "your-subscription-id"
```

### 2. 変数ファイルの準備（必須）

```bash
cp terraform.tfvars.example terraform.tfvars
```

⚠️ **必須**: `terraform.tfvars`を編集し、ストレージアカウント名をグローバルに一意な名前に変更してください：

```hcl
storage_account_name = "st[あなたの識別子]demo[ランダム数字]"  # 例: "stmamezoudemo98765"
```

### 3. Terraformの初期化

```bash
terraform init
```

### 4. 実行計画の確認

```bash
terraform plan
```

以下のリソースが作成される予定であることを確認します：
- リソースグループ: `rg-az900-demo`
- ストレージアカウント: 指定した名前
- Blobコンテナー: `democontainer`

### 5. リソースのデプロイ

```bash
terraform apply
```

`yes` と入力して確認します。

### 6. 結果の確認

デプロイが完了したら、出力される情報を確認します：

```bash
terraform output
```

Azureポータルでも確認できます：
1. https://portal.azure.com にアクセス
2. リソースグループを検索
3. 作成されたリソースを確認

### 7. ストレージの動作確認（オプション）

Azure CLIを使用してBlobをアップロードしてみます：

```bash
# テストファイルの作成
echo "Hello Azure!" > test.txt

# ストレージアカウント名の取得
STORAGE_ACCOUNT=$(terraform output -raw storage_account_name)

# Blobのアップロード
az storage blob upload \
  --account-name $STORAGE_ACCOUNT \
  --container-name democontainer \
  --name test.txt \
  --file test.txt \
  --auth-mode login
```

### 8. クリーンアップ（重要）

⚠️ **重要**: デモが終わったら、**必ず**リソースを削除してください。削除しないと継続的に課金されます。

```bash
terraform destroy
```

`yes` と入力して確認します。

削除が完了したら、Azureポータルでリソースグループが削除されていることを確認してください。

## カスタマイズ

### リージョンの変更

`terraform.tfvars`で別のリージョンを指定できます：

```hcl
location = "westus2"  # または "eastus", "westeurope" など
```

### レプリケーションタイプの変更

`main.tf`のストレージアカウント定義で変更できます：

```hcl
account_replication_type = "GRS"  # または "ZRS", "GZRS"
```

利用可能なオプション：
- **LRS** (Locally Redundant Storage): 単一データセンター内での冗長化
- **GRS** (Geo-Redundant Storage): セカンダリリージョンへのレプリケーション
- **ZRS** (Zone-Redundant Storage): 可用性ゾーン間での冗長化
- **GZRS** (Geo-Zone-Redundant Storage): ZRSとGRSの組み合わせ

## トラブルシューティング

### ストレージアカウント名が既に使用されている

エラー: `The storage account named 'xxx' is already taken`

ストレージアカウント名はAzure全体で一意である必要があります。
`terraform.tfvars`で別の名前を指定してください。

### 権限エラー

エラー: `Authorization failed`

Azureサブスクリプションで「共同作成者」以上のロールが必要です。
権限を確認してください。

## 関連リソース

- [Azureストレージアカウントの概要](https://docs.microsoft.com/ja-jp/azure/storage/common/storage-account-overview)
- [Azureリソースグループ](https://docs.microsoft.com/ja-jp/azure/azure-resource-manager/management/manage-resource-groups-portal)
- [Terraform Azure Provider](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
