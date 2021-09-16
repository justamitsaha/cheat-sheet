#Install Docker
sudo yum update -y
sudo amazon-linux-extras install docker  # Amazon linux 2 
sudo yum install docker -y       # Amazon linux
sudo systemctl start docker     #Start docker
sudo usermod -a -G docker ec2-user

#basic commands
sudo docker run nginx
sudo docker stop containerID/name
sudo docker ps
sudo docker ps -a
sudo docker images


# interactive mode foreground mode attach detach
sudo docker container run nginx           #start a container foreground mode if image not locally present then pull it
sudo docker container run -it nginx       # interactive or forgound mode
CTRL+P+Q                                   # to exit from foreground
sudo docker container run -d nginx        #detachd mode 
sudo docker container run -it ubuntu    #CTRL+P+Q ubuntu will be running
sudo docker container run --name ubuntu2 ubuntu ls -al /tmp
sudo docker container exec -it 0d7268ef579c /bin/bash  #attach to running container
sudo docker container start -i containerID/name


sudo docker container run -d --name AmitNginx nginx     # correct way to assign a name to container
sudo docker container run -d nginx --name AmitNginx     # wrong will create an nginx container with random name and exit it
sudo docker container run -d -p 5001:80 --name amit-web httpd
sudo docker container run -d -p 5001:80 -v  C:/Amit/Work/DockerTraining/caseStudy2/dockerContent/webapp:/usr/local/apache2/htdocs/ --name amit-web httpd
sudo docker stop $(sudo docker ps -a -q)
sudo docker rm $(sudo docker ps -a -q)
sudo docker container prune


sudo docker inspect -f '{{json .HostConfig.RestartPolicy}}' containerName
sudo docker inspect -f '{{json .HostConfig.RestartPolicy}}' containerName | jq  # formatted with jq need o install jq first
docker update containerName --memory=10m

docker image history imageName/containerID
can mention user in docker file


#Docker file
#ENV can be used to maintain version eg
FROM ubuntu
USER root
ENV NGINX_VERSION 1.10.3
RUN apt-get update && apt-get install -y nginx=NGINX_VERSION
WORKDIR /var/www/html/              # all subsequent commands will use this workdir
ADD index.html
EXPOSE 80
USER docker
CMD ["httpd", "-g", "daemon off;"]
STOPSIGNAL SIGTERM
HEALTHCHECK CMD curl localhost:80
# while running 
docker container run -d -e NGINX_VERSION =3 nginx

FROM ubuntu
CMD ["echo", "hello","world"]


sudo docker swarm init
sudo docker swarm join --token SWMTKN-1-1499to50z904vw0afmx9zzt69zwjd7a8crl9uapcyaldvn8xi8-efq57og2iub0nojwgac4wfe3l 172.31.37.83:2377
sudo docker node ls
sudo docker service scale serviceName=4
sudo docker service create --name first-web-app1 --replicas 5 -p 5001:80 justamitsaha/first-web-app1
sudo docker service inspect first-web-app1
sudo docker service ps first-web-app1
sudo docker service inspect first-web-app1



#by default a container goes to bridge network where thay can talk to using IP only
docker network connect networkName containerName   #after this container will have 2 IP and network
docker network disconnect bridge httpdc_web


