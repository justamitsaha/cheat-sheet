#docker.sh
sudo systemctl start docker											# start docker


sudo docker stop ContainerID
sudo docker pull jenkins

sudo docker images 													# list images
sudo docker ps														# list running containers
sudo docker ps -a 													# list all containers

sudo docker inspect jenkins 										# shows details of an image

sudo docker rmi imageId     										# remove images
sudo docker rm ContainerID 											# remove container/ first images 

sudo docker top ContainerID 
sudo docker stop ContainerID 


sudo docker run redis:4:0 											#tag
sudo docker run -d -p 9999:9999 docker/getting-started				#-p for mapping port -d for detacched mode
sudo docker run -it ContainerID 									#-i for interactive mode t for promt
sudo docker run -v /opt/datadir:var/lib/mysql mysql 				#map volume so that sql data is persisted locally

sudo docker run -d image 											#run in detached mode
sudo docker attach containerID 											#attach to container


