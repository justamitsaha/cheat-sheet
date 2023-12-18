#installation
sudo snap install microk8s --classic
sudo usermod -a -G microk8s ubuntu 
sudo chown -f -R ubuntu ~/.kube
sudo microk8s.kubectl
echo "alias kubectl='microk8s.kubectl'" >> ~/.bashrc 
sudo usermod -a -G microk8s ubuntu 
kubectl version
kubectl version --short
kubectl get nodes
kubectl get nodes -o wide
kubectl get pods

kubectl run pod1 --image justamitsaha/node-app-new
kubectl exec -it pod1 --bash
kubectl delete pod pod1
kubectl describe pod pod1
kubectl exec -it pod1 --bash
kubectl run newpod --image justamitsaha/case-study-three --labels='env-prod' --requests='memory=100' --dry-run=client -o yaml
kubectl run newpod --image justamitsaha/case-study-three --dry-run=client -o yaml
kubectl create -f  kubernetes.yml
kubectl run newpod1 --image httpd --labels='env-prod'

#expose via service
kubectl expose pod pod1 --name mypodservice --port 80
kubectl get all #get all service
kubectl delete service mypodservice
kubectl describe service mypodservice

kubectl create deployment mydeployment1 --image=justamitsaha/case-study-three
kubectl describe deployment/mydeployment
kubectl scale deployment/mydeployment --replicas=3
kubectl expose deployment mydeployment1 --port=80 --type=ClusterIP
kubectl delete deployment mydeployment

kubectl create deployment mydeployment2 --image=justamitsaha/node-app-new
kubectl scale deployment/mydeployment2 --replicas=2
kubectl expose deployment mydeployment2 --port=8080 --type=NodePort



