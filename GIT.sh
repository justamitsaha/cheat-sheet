<-----------------------GIT------------------------------>



# Install Git
	sudo apt-get update
	sudo apt-get upgrade
	sudo apt-get install git
<-------------------------------------------------------->
git # Setting up initial configurations or users
	git config --global user.email "you@example.com"
	git config --global user.name "Your Name"

	git config --global http.proxy http://tms%5<LanID>:<password>@tfsproxy.tfs.toyota.com:80
	git config --system http.proxy http://tms%5<LanID>:<password>@tfsproxy.tfs.toyota.com:80

	git config http.sslVerify false

<-------------------------------------------------------->

# for Cloning a re pository
	git clone https://github.com/justamitsaha/mislaneous.git

#after making changes
	it status			# this is show the list of modified changes

# for adding files

	git add 'README.MD'		# or to add all
	git add .
	git commit -m "adding details of commit"

<-------------------------------------------------------->
#setting up new repositary in GIT



