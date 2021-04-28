#docker.sh
sudo systemctl start docker											# start docker

sudo docker run nginx 												# runs a container if it locally exists else pulls the image for the 1st time
sudo docker run --name webapp nginx:1.14-alpine							#name a container
sudo docker stop ContainerID
sudo docker pull jenkins

sudo docker image ls/docker images									# list images
sudo docker ps														# list running containers
sudo docker ps -a 													# list all containers

sudo docker inspect jenkins 										# shows details of an image
sudo docker exec container_name cat /etc/hosts						# execute a command on container

sudo docker rmi imageId     										# remove images
sudo docker rm ContainerID 											# remove container/ first images 

sudo docker top ContainerID 




sudo docker run redis:4:0 											# runs a specific version called tag
sudo docker run -it ContainerID 									# i for interactive mode t for promt from application in the container
sudo docker run -d -p 80:9999 docker/getting-started				#-p for mapping port -d for detacched mode 80 is host port 9999 is docker host port
sudo docker run -v /opt/datadir:var/lib/mysql mysql 				# map volume so that sql data is persisted locally

sudo docker run -d image 											#run in detached mode
sudo docker attach containerID 										#attach to container

sudo docker run -d --name=worker --link db:db -link redis:redis worker #crates entry in etc/host file of the container to connect with linked container


