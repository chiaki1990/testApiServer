#!/bin/bash

# 設定項目
appDir="testApiServer"



sudo amazon-linux-extras list | grep golang

sudo amazon-linux-extras install golang1.11 -y

amazon-linux-extras list | grep nginx

sudo amazon-linux-extras install nginx1 -y

# nginx 設定ファイル
cp ~/"${appDir}"/nginx/nginx.conf /etc/nginx/nginx.conf

# nginx の設定確認
# sudo nginx -t

# nginx起動
sudo systemctl restart nginx

cd "${appDir}" 

go build -o dist

./dist/go-sample

