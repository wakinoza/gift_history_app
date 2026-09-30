# 頂き物管理App on AWS


Spring Bootで作成した頂き物管理アプリをAWSへ段階的にデプロイすることを目的とした学習プロジェクトです。

EC2上のTomcatとRDSを利用した構成から開始し、AWSサービスの役割や採用理由を確認しながら、
段階的にシステム構成を改善していく予定です。

構築・検証の進捗に応じて、設計やデプロイ手順を更新します。
---

<img width="828" height="732" alt="スクリーンショット 2026-06-30 175404" src="https://github.com/user-attachments/assets/305b286c-0cf3-4535-a3e6-484c0d97a06e" />

<img width="815" height="763" alt="スクリーンショット 2026-06-30 175441" src="https://github.com/user-attachments/assets/6b221696-326a-479d-8f08-864ccae824d7" />

<img width="1088" height="239" alt="スクリーンショット 2026-07-06 172011" src="https://github.com/user-attachments/assets/c78a378a-5230-43e4-b9e9-92ce116d476c" />


---


## 現在の進捗

✅ アプリケーション開発・ローカル環境構築

---

## 使用技術

### Backend

- Java 21
- Spring Boot 4
- Maven

### Database

- MySQL

### Development

- Git
- GitHub

### Container

- Docker

---

## 🚀 Dockerの起動手順

### 前提

- Windows11
- Java 21
- Docker Desktop
- VS Code(Extension Pack for Java)

### 1. リポジトリをクローン
以下のコマンドを実行してください。

```bash
git clone https://github.com/wakinoza/gift_history_app
cd gift_history_app
```

### 2. 環境変数の準備
機密情報をリポジトリ外で管理するため、.env.example を参考に .env を作成してください。
本プロジェクトでは、以下のパスに .env を配置する構成です。

```text
C:\Secrets\gift_app\.env
```

.envの配置先を`start-compose.ps1`の$envFileに記述してください。


### 3. コンテナの起動
プロジェクトルートでDocker Compose起動用スクリプトを実行します。

```bash
.\start-compose.ps1
```

このスクリプトからDocker Composeを実行することで、プロジェクト外の.env の読み込みとコンテナの起動を行います。

### 4. アプリの確認
ブラウザで「http://localhost:8080」 にアクセスしてください。

ユーザー名：yamada / パスワード：yamada_password でログイン可能です。

### 5. コンテナの停止
コンテナの停止は、以下のコマンドを実行してください。

```bash
docker compose --env-file C:/Secrets/gift_app/.env down
```

### 6. テストの実行（Maven）
インメモリDBに自動接続され、ローカル環境を汚さずに高速にテストが実行されます。

```bash
mvn test
```
