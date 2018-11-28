#!/bin/sh
# mastodon update script

cd ~/mastodon

echo "へいますたー！" | toot post
git pull
sleep 5

echo "びるど！" | toot post
sudo docker-compose build
sleep 5

echo "まいぐれーしょん！" | toot post
sudo docker-compose run --rm web rails db:migrate
sleep 5

echo "10秒後にでっぷろーい！" | toot post
sleep 10
sudo docker-compose up -d

echo "だん！" | toot post
