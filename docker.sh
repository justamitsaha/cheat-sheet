#docker.sh
sudo systemctl start docker											# start docker

sudo docker run -d -p 9999:9999 docker/getting-started
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
