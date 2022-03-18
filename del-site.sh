sudo rm -rf /var/www/"$1"
sudo rm -rf /etc/nginx/sites-available/"$1" && sudo rm /etc/nginx/sites-enabled/"$1"
sudo certbot delete --cert-name "$1"
sudo systemctl reload nginx
