#docker.sh
sudo systemctl start docker
sudo docker run -d -p 80:80 docker/getting-started