<---------------nginx------------------->
sudo dnf -y install nginx
sudo apt -y install nginx

systemctl status nginx /service nginx status
systemctl start nginx /service nginx start
systemctl stop nginx /service nginx stop
ps -ef|grep nginx
sudo dnf -y remove nginx
sudo nginx -t
sudo tail -f /var/log/nginx/error.log
sudo tail -f /var/log/nginx/access.log
cp -r /home/mr-robot2/Downloads/amit/ /usr/share/nginx/html/docroot/
cp -r /home/mr-robot2/Downloads/richa/ /usr/share/nginx/html/docroot/
cp /home/mr-robot2/Downloads/nginx.conf /etc/nginx

sudo chmod 777 /usr/share/nginx/html
sudo chmod 777 /etc/nginx/nginx.conf





sudo chmod 777 /usr/share/nginx/html/amit -R
sudo chmod 777 /etc/nginx/nginx.conf


<---------------apache------------------->
systemctl status httpd /service httpd status
systemctl start httpd /service httpd start
systemctl stop httpd /service httpd stop
ps -ef|grep httpd
sudo dnf remove httpd


sudo chmod 777 /var/www/html -R
