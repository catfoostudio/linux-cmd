sudo apt update
sudo apt install mysql-server -y
sudo mysql_secure_installation

#answer and set configuration

sudo mysql


ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '<password>';

FLUSH PRIVILEGES;

CREATE USER 'morphosis_admin'@'localhost' IDENTIFIED BY '<password>';

GRANT ALL PRIVILEGES ON *.* TO 'morphosis_admin'@'localhost' WITH GRANT OPTION;
exit;

systemctl status mysql.service

