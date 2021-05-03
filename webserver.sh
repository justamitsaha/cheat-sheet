<---------------nginx------------------->
yum -y install nginx
apt -y install nginx

service nginx status /systemctl status nginx 
service nginx start /service nginx start
service nginx stop /service nginx stop




<---------------apache------------------->
systemctl status httpd /service httpd status
systemctl start httpd /service httpd start
systemctl stop httpd /service httpd stop
