sudo mkdir /var/www/"$1" && sudo chown "$USER":"$USER" /var/www/"$1" && touch /var/www/"$1"/index.html

sudo tee -a /etc/nginx/sites-available/"$1" > /dev/null <<EOT
server {
        listen 80;
        listen [::]:80;
        root /var/www/$1;
        index index.html index.htm index.nginx-debian.html;
        server_name $1 www.$1;
        location / {
                try_files \$uri \$uri/ =404;
        }
}
EOT

sudo ln -s /etc/nginx/sites-available/"$1" /etc/nginx/sites-enabled/ && sudo systemctl restart nginx

sudo certbot --nginx -d "$1" -d www."$1"
