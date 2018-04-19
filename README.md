# spring-boot

You need to have java 8 installed and can build this project by 
```
./gradlew build
```

## Docker build
You can build this app as a docker container with
```
docker build -t <registry>/imagename:<version> .
```

## Kubernetes deployment
To deploy the container you need to push the image to a docker registry your kubernetes instance can access.
Then adapt the image name in Deployment.yml. Log into your clusetern and deploy everything with
```
kubectl apply -f Deployment.yml
```

If you running a lite cluster in e.g. IBM Bluemix you can not expose your deployment via LoadBalancer but you need to use
NodePort. If not change the Service.yml file accordingly. Then deploy the service with
```
kubectl apply -f Service.yml

To get the public IP of the node call
```
bx cs workers <clustername>
```

```
To get the node port mapping use 
```
kubectl get svc
```

Then access your service via
<public node ip>:<node port>
