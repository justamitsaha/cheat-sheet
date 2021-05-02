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

docker run -p 38282:8080 --name blue-app -e APP_COLOR=blue -d kodekloud/simple-webapp #env variable

docker-compose up                                                   #start docker project from YAML file and makes the name of the folder of the file as peoject file

#docker registry
docker run -d -p 5000:5000 --name registry registry:2
docker image tag my-image localhost:5000/myimage
docker push localhost:5000/my-image
docker pull localhost:5000/my-image

# docker uses control group to control the resourse usage on host
docker run --cpu= .5 ununtu
docker run --merory==100m ubuntu

# check  process on a container 
docker exec containerID ps -eaf                                         # process on container
ps -eaf | grep dockwer-java-home                                        #same process on host "dockwer-java-home" found from previous cmd based on the container running
