# Deployment on Minikube

1. Install Minikube

https://kubernetes.io/docs/tasks/tools/install-minikube/

2. Start Minikube

`minikube start`.  

If you aren't using the VBox, hyperviser, you'll probably need to specify which hypervisor you're using.

3. Clone this repo

3. Edit `dol-deployment.yaml` and comment out the `aws` annotations and change the docker image location to 
`docker.io/stevenzinck/dol`

4. Apply the configuration `kubectl apply -f . `


Some commands to watch for progress or troubleshoot:

```
kubectl get pods
kubectl get event
kubectl describe deployment 
kubectl get svc 
kubectl describe svc dol
```



`dol-service` is set up to create a LoadBalancer. On Minikube, Service Type LoadBalancer makes the service accessible via the
command `minikube start dol-service`.  Your browser should open with the DOL home page.

Note the DB is still running on RDS, which your laptop will not be able to connect to, so some pages won't load.

