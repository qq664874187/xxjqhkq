#!/bin/bash
# 青禾口腔网站 — 一键同步到服务器
# 用法：./sync.sh 服务器IP [用户名]
# 示例：./sync.sh 1.2.3.4
#       ./sync.sh 1.2.3.4 administrator

SERVER_IP=${1:?"请提供服务器IP，例如: ./sync.sh 1.2.3.4"}
SERVER_USER=${2:-root}

echo "📤 同步网站文件到 $SERVER_USER@$SERVER_IP ..."

rsync -avz --delete \
  --exclude '.git' \
  --exclude 'sync.sh' \
  --exclude 'images/*.jpg' \
  --exclude 'images/*.png' \
  /home/admin_xxj/qinghe-dental/ \
  $SERVER_USER@$SERVER_IP:/var/www/qinghe-dental/ 2>/dev/null || \
scp -r /home/admin_xxj/qinghe-dental/* $SERVER_USER@$SERVER_IP:/var/www/qinghe-dental/

echo ""
echo "✅ 同步完成！"
echo "   服务器文件在：/var/www/qinghe-dental/"
echo "   如果服务器用 Windows+IIS，路径在 C:\\inetpub\\wwwroot\\qinghe-dental\\"