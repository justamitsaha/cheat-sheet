#keystore
#keytool is present in jdk1.6.0_31/bin
#CA cert path /opt/local/wtu2ajba/jdk1.6.0_31/jre/lib/security/cacerts
#or if you grep jboss process you will see a argument -Djavax.net.ssl.trustStore keystore path will the value of the argument

#to list CA cert 
keytool -list -v -keystore /opt/local/wtu2ajba/jdk1.6.0_31/jre/lib/security/cacerts

ls -a # show hiddden files 
ls -l # list files
ls -a -l # list all files
la -l -a # same a above

touch index.html # create a file
cat index.html #read a file 

cat > index.html # create a file and update it press CTRL + D to save



