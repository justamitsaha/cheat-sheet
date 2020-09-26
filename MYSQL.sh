#install my SQL

sudo apt update
sudo apt install mysql-server
sudo mysql_secure_installation

#richa123


#SHOWS A LIST OF USERS 
SELECT user,authentication_string,plugin,host FROM mysql.user;

#add a password to user
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'richa123';



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
	DESCRIPTION VARCHAR(2
		50), 
	GENRE VARCHAR(50),
	IMDB_RATING VARCHAR(4),
	ROTTEN_TOMATOES_RATING VARCHAR(4),
	IMAGE_PATH BLOB);

ALTER TABLE MOVIE_MASTER ADD MOVIE_NAME VARCHAR(10);

ALTER TABLE MOVIE_MASTER DROP COLUMN NAME;

ALTER TABLE MOVIE_MASTER MODIFY COLUMN MOVIE_NAME VARCHAR(50);

#TABLE DETAILS
SHOW COLUMNS FROM MOVIE_MASTER;

INSERT INTO MOVIE_MASTER (MOVIE_NAME, DESCRIPTION, MOVIE_YEAR, GENRE, IMDB_RATING, ROTTEN_TOMATOES_RATING, IMAGE_PATH) VALUES 
('The Shawshank Redemption', 
'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 
'1994',
'Drama',
'9.3',
'90',
'https://cdn.telanganatoday.com/wp-content/uploads/2019/08/The-Shawshank-Redemptiony.jpg');




