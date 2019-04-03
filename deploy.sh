minikube start

eval $(minikube docker-env)

file=deployment-cloud.yaml
msg="Cloud deployment"
while getopts ":l" opt; do
  case ${opt} in
    l ) file=deployment-local.yaml; docker build -t highload . ; msg="Local deployment";
      ;;
    \? ) echo "Usage: deply.sh [-l]"
      ;;
  esac
done
echo $msg
kubectl create -f $file

sleep 10
kubectl port-forward deployments/highload 5000:5000
