#install my SQL

sudo apt update
sudo apt install mysql-server
sudo mysql_secure_installation

#dev_user2123

#uninstall sql server
sudo apt-get purge mysql-server mysql-client mysql-common mysql-server-core-* mysql-client-core-*;
sudo apt autoremove
sudo apt autoclean
sudo rm -rf /etc/mysql /var/lib/mysql



#SHOWS A LIST OF USERS 
SELECT user,authentication_string,plugin,host FROM mysql.user;

#Alter user add a password to user will not work if logged in with other user who doesn't have CREATE USER privilege(s)
#also below command is required to allow root login without sudo as it adds password to user table
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'yoyoyo_password';

service mysql status
service mysql start
service mysql stop

# CHECK IF MY SQL IS RUNNING OR NOT
ps -ef | grep mysqld

#login to db
mysql -u root -p



SHOW DATABASES;

CREATE DATABASE MOVIE_MASTER;

DROP DATABASE MOVIE_MASTER;

SHOW TABLES;

USE MOVIE_MASTER;

CREATE TABLE MOVIE_MASTER ( 
	MOVIE_TD INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,NAME VARCHAR(50) NOT NULL,
	MOVIE_YEAR VARCHAR(10),
	DESCRIPTION VARCHAR(250), 
	GENRE VARCHAR(50),
	IMDB_RATING VARCHAR(4),
	ROTTEN_TOMATOES_RATING VARCHAR(4),
	IMAGE_PATH BLOB);

ALTER TABLE MOVIE_MASTER ADD MOVIE_NAME VARCHAR(10);

ALTER TABLE MOVIE_MASTER DROP COLUMN NAME;

ALTER TABLE MOVIE_MASTER MODIFY COLUMN MOVIE_NAME VARCHAR(50);

#TABLE DETAILS
SHOW COLUMNS FROM MOVIE_MASTER;

INSERT INTO MOVIE_MASTER (NAME, DESCRIPTION, MOVIE_YEAR, GENRE, IMDB_RATING, ROTTEN_TOMATOES_RATING, IMAGE_PATH) VALUES 
('The Shawshank Redemption', 
'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 
'1994',
'Drama',
'9.3',
'90',
'https://cdn.telanganatoday.com/wp-content/uploads/2019/08/The-Shawshank-Redemptiony.jpg');

SELECT * FROM MOVIE_MASTER;
# create users in data base

CREATE USER <USENAME> @<HOST> IDENTIFIED BY <PASSWPRD>;

GRANT CREATE, DROP, DELETE, INSERT, SELECT, UPDATE <DB_NAME>TO <USENAME>@<HOST>;

# <HOST> CAN BE localhost, certain IP or * eg 

CREATE USER 'dev_user'@'192.168.0.100' IDENTIFIED BY 'yoyoyo_password';
USE MOVIE_MASTER;
GRANT CREATE, DROP, DELETE, INSERT, SELECT, UPDATE ON MOVIE_MASTER TO 'dev_user'@'192.168.0.100';
FLUSH PRIVILEGES;

# to test
mysql -u dev_user -p

CREATE USER 'dev_user2'@'localhost' IDENTIFIED BY 'yoyoyo_password';
USE MOVIE_MASTER;
GRANT CREATE, DROP, DELETE, INSERT, SELECT, UPDATE ON MOVIE_MASTER TO 'dev_user2123'@'localhost';
FLUSH PRIVILEGES;



