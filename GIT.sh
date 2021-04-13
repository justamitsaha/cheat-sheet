<-----------------------GIT------------------------------>



# Install Git
	sudo apt-get update
	sudo apt-get upgrade
	sudo apt-get install git
<-------------------------------------------------------->
git # Setting up initial configurations or users
	git config --global user.email "you@example.com"
	git config --global user.name "Your Name"

	git config --global http.proxy http://username:passworrd@proxydomain.com:80
	git config --system http.proxy http://username:passworrd@proxydomain.com:80

	git config http.sslVerify false

<-------------------------------------------------------->

# for Cloning a re pository
	git clone https://github.com/justamitsaha/mislaneous.git

#after making changes
	git status			# this is show the list of modified changes

# for adding files

	git add 'README.MD'		# or to add all
	git add .
	git commit -m "adding details of commit"

#setting up new repositary in GIT

	git init
	git add .
	git commit -m "RXJS tutorial first commit"
##create a repository
	git remote add origin https://github.com/justamitsaha/angularRxjsTutorial.git

	git push -u origin master

#Shows a list of branchs
	git branch
#switches to different branch
	git checkout <existing_branch>
#switches and create new branch
	git checkout -b <new_branch>
#clone different branch
	git clone -b <branch name> <repo_uri>

#push the changes to remote
	git push origin <branch name>

#stach
	git stash
	git stash pop

#undo git add
	git reset <file>

	git fetch origin --prune
	git stash
	git rebase origin master
	git stash apply
	




