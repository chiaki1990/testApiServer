デプロイ手順

1. ec2 インスタンス作成
2. ８０番のセキュリティグループを開ける
3. ssh 経由で ec2 ログイン

4. git インストール&ソースコードダウンロード

```
export repositoryUrl="https://github.com/chiaki1990/testApiServer.git"

yum list | grep git

sudo yum install git.x86_64 -y

git clone "${repositoryUrl}"
```

5. web サーバー、APP サーバー起動

```
sudo chmod +x ./testApiServer/deployment/deploy.sh && sudo ./testApiServer/deployment/deploy.sh
```
