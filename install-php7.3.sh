sudo apt update -y
sudo apt upgrade -y
sudo apt install software-properties-common
sudo add-apt-repository ppa:ondrej/apache2 -y
sudo add-apt-repository ppa:ondrej/php -y
sudo apt update
sudo apt install php7.3 -y
sudo apt install php7.3-common php7.3-mysql php7.3-xml php7.3-xmlrpc php7.3-curl php7.3-gd php7.3-imagick php7.3-cli php7.3-dev php7.3-imap php7.3-mbstring php7.3-opcache php7.3-soap php7.3-zip php7.3-intl php7.3-gettext -y
php -v

# max_execution_time = 3600
# max_input_time = 3600
# max_input_vars = 10000
# memory_limit = 1024M
# post_max_size = 1024M
# upload_max_filesize = 1024M
# max_file_uploads = 200
# short_open_tag = On