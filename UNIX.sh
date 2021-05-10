#keystore
#keytool is present in jdk1.6.0_31/bin
#CA cert path /opt/local/wtu2ajba/jdk1.6.0_31/jre/lib/security/cacerts
#or if you grep jboss process you will see a argument -Djavax.net.ssl.trustStore keystore path will the value of the argument

#to list CA cert 
keytool -list -v -keystore /opt/local/wtu2ajba/jdk1.6.0_31/jre/lib/security/cacerts

cd #change directory thediretory names are case sensetive
cd- # previous directory

ls -a # show hiddden files 
ls -l # list files
ls -a -l # list all files
la -l -a # same a above
ls -R #  recursively sub directories as well
ls -ltr # details long listing format

cat index.html #read a file 
cat > index.html # create a file and update it press CTRL + D to save

touch index.html # create a file


VIM
command mode escape key
i to go into insert mode
: to open escape bar
:w save(write)
:w file_name rename and save as different file
:q normal exit
:q! exit without saving
:qw save and exit
:u to undo

grep # Global Search

grep 'pattern_to_search'  /location/foldername/file
grep -i 'pattern_to_search' /location/foldername/file  		#ignore case
grep -r 'pattern_to_search' /location/foldername/ 			#recursively through all folders
grep -i "UNix" geekfile.txt 		#Case insensitive search
grep -c "unix" geekfile.txt 		#Displaying the count of number of matches 
grep -l "unix" *  					#Display the file names that matches the pattern
grep -l "unix" f1.txt f2.txt f3.xt f4.txt
grep -w "unix" geekfile.txt 		#Checking for the whole words in a file
grep -o "unix" geekfile.txt 		#Displaying only the matched pattern
grep -n "unix" geekfile.txt			#Show line number while displaying the output 
grep -v "unix" geekfile.txt 		#lines that are not matched with the specified search sting pattern
grep "^unix" geekfile.txt 			#Matching the lines that start with a string
grep "os$" geekfile.txt 			#Matching the lines that end with a string
grep –e "Agarwal" –e "Aggarwal" –e "Agrawal" geekfile.txt 
$grep -A1 'learn' geekfile.txt
-A n : Prints searched line and nlines after the result.
-B n : Prints searched line and n line before the result.
-C n : Prints searched line and n lines after before the result.

ps -eaf                             #process running on a host

/etc/hosts
sudo chmod 777 /etc/hosts
127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4
::1         localhost localhost.localdomain localhost6 localhost6.localdomain6
0:0:0:0 amitsaha.com
0:0:0:0 www.amitsaha.com

sudo chmod +x /etc/init.d/nginx  # setting executable permission






