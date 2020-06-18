sudo apt update -y && sudo apt upgrade -y
sudo apt install software-properties-common
sudo add-apt-repository ppa:ondrej/apache2 -y
sudo apt install apache2

sudo nano /etc/apache2/sites-available/wordpress.conf

# <VirtualHost *:80>
#     # The primary domain for this host
#     #ServerName example1.com
#     # Optionally have other subdomains also managed by this Virtual Host
#     #ServerAlias example1.com *.example1.com
#     DocumentRoot /var/www/wordpress
#     <Directory /var/www/wordpress>
#         Require all granted
#         # Allow local .htaccess to override Apache configuration settings
#         AllowOverride all
#     </Directory>
#     # Enable RewriteEngine
#     RewriteEngine on
#     RewriteOptions inherit

#     # Block .svn, .git
#     RewriteRule \.(svn|git)(/)?$ - [F]

#     # Catchall redirect to www.example1.com
#     #RewriteCond %{HTTP_HOST}   !^www.example1\.com [NC]
#     #RewriteCond %{HTTP_HOST}   !^$
#     #RewriteRule ^/(.*)         https://www.example1.com/$1 [L,R]

#     # Recommended: XSS protection
#     <IfModule mod_headers.c>
#         Header set X-XSS-Protection "1; mode=block"
#         Header always append X-Frame-Options SAMEORIGIN
#     </IfModule>
# </VirtualHost>

sudo a2enmod rewrite
cd /etc/apache2/sites-available/

sudo a2ensite wordpress.conf
sudo a2dissite 000-default.conf

sudo mkdir /var/www/wordpress

sudo apache2ctl configtest

sudo systemctl restart apache2