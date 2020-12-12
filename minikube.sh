minikube start --driver=docker

echo "Starting Minikube service"
minikube start --driver=docker

cd /home/ubuntu
git clone https://github.com/devop-user/Minikube.git

cd Minikube
kubectl apply -f mongo-secret.yaml
kubectl apply -f mongo.yaml
kubectl apply -f mongo-configmap.yaml 
kubectl apply -f mongo-express.yaml

minikube service mongo-express-service