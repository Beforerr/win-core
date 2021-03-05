scoop install php composer
composer config -g -- disable-tls true
composer create-project ledccn/iyuuautoreseed:dev-master
cp .\config.sample.php .\config.php