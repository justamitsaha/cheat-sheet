sudo docker network ls
sudo docker network create -d overlay my_net
sudo docker service create --name first-web-app1 --replicas 5 -p 5001:8080  --network  my_net justamitsaha/node-app-new
sudo docker network inspect my_net