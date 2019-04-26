#<------------ GIT------------------------->

git config --global http.proxy http://tms%5<LanID>:<password>@tfsproxy.tfs.toyota.com:80
git config --system http.proxy http://tms%5<LanID>:<password>@tfsproxy.tfs.toyota.com:80

git clone https://github.com/justamitsaha/mislaneous.git

git config http.sslVerify false

# Install Git
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git
#setting up new repositary in GIT
get init
or
git clone https://github.com/justamitsaha/mislaneous.git
git add Link.sh  #to add some files
git commit -m "sh file pushed"  # add files to local repository
git push -u origin master

git config --global user.email "you@example.com"
git config --global user.name "Your Name"

#to set your account's default identity.Omit --global to set the identity only in this repository.

#for modification
git status
git add 'file name'
git add .
git commit -m "git"