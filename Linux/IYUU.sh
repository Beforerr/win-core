docker run -d \
--name IYUUPlus \
-e cron='10 */10 * * *' \
-v /Users/zijin:/IYUU/db \
-p 8787:8787 \
--restart=always \
iyuucn/iyuuplus:arm64v8

scoop install php composer
composer config -g -- disable-tls true
composer create-project ledccn/iyuuautoreseed:dev-master
cp .\config.sample.php .\config.php