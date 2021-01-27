ssh -i EC2-AmitFirst.pem ec2-user@

yum update -y #update without prompts

yum install -y httpd.x86_64

systemctl start httpd.service
systemctl status httpd.service
systemctl enable httpd.service

curl localhost:80


#aws cli
aws configure
ls ~/.aws
cat ~/.aws/config
