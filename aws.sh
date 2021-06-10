ssh -i EC2-AmitFirst.pem ec2-user@

#!/bin/bash
# Use this for your user data (script from top to bottom)
# install httpd (Linux 2 version)
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html

curl localhost:80


#aws cli
aws configure
ls ~/.aws
cat ~/.aws/config
