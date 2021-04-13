#docker.sh
sudo systemctl start docker											# start docker
sudo docker run -d -p 9999:9999 docker/getting-started
sudo docker pull jenkins
sudo docker images 													# list images
sudo docker rmi 7a86f8ffcb25   										# remove images
sudo docker inspect jenkins 										# shows details of an image
sudo docker ps														# list running containers
sudo docker top ContainerID 
sudo docker stop ContainerID 
sudo docker rm ContainerID 