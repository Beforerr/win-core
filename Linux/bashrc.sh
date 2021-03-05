# export HTTP_PROXY="[username]:[password]@[proxy-web-or-IP-address]:[port-number]"
# export HTTPS_PROXY="[username]:[password]@[proxy-web-or-IP-address]:[port-number]"
tee --append ~/.bashrc > /dev/null <<EOT
export HTTP_PROXY="172.29.48.1:10809"
export HTTPS_PROXY="172.29.48.1:10809"
EOT
