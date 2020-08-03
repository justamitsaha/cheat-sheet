#install my SQL

sudo apt update
sudo apt install mysql-server
sudo mysql_secure_installation

SELECT user,authentication_string,plugin,host FROM mysql.user