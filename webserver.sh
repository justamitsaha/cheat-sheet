<---------------nginx------------------->
sudo dnf -y install nginx
sudo apt -y install nginx

systemctl status nginx /service nginx status
systemctl start nginx /service nginx start
systemctl stop nginx /service nginx stop
ps -ef|grep nginx
sudo dnf remove nginx


<---------------apache------------------->
systemctl status httpd /service httpd status
systemctl start httpd /service httpd start
systemctl stop httpd /service httpd stop
ps -ef|grep httpd
sudo dnf remove httpd


sudo chmod 777 /var/www/html -R
