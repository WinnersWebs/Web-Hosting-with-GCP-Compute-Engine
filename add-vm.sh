sudo apt update && sudo apt upgrade -y && sudo apt install -y ufw nginx python3-certbot-nginx && sudo ufw allow ssh && sudo ufw allow 'Nginx Full' && sudo ufw enable && sudo rm -rf /var/www/html
