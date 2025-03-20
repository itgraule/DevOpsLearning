# Kubernetes 


## Get Version 

```kubectl version```

## Task 1: Create a Kubernetes Service using nginx image

### Create a Deployment named my-deployment1 using the nginx image

```kubectl create deployment my-deployment1 --image=nginx```

kubectl: The command-line tool for interacting with the Kubernetes API.

create deployment: Tells Kubernetes that you want to create a new Deployment. A Deployment is a Kubernetes object that manages a set of replicated Pods, ensuring that the specified number of replicas are running and updated.

my-deployment1: It is the name of the Deployment being created. In this case, the Deployment is named my-deployment1.

--image=nginx: It specifies the container image used for the Pods managed by this Deployment. The nginx image is a popular web server and reverse proxy server.

It creates a Deployment named my-deployment1 that uses the nginx image. Deployments manage the rollout and scaling of applications.


### Exposes Deployment as a Sevice 

```kubectl expose deployment my-deployment1 --port=80 --type=NodePort --name=my-service1```

It exposes the my-deployment1 Deployment as a Service named my-service1, making it accessible on port 80 through a NodePort. NodePort services allow external traffic to access the service.

### Lists all services in the default namespace. Services provide a stable IP address and DNS name for accessing a set of pods.

```  kubectl get services ```


## Task 2: Manage Kubernetes Pods and Services


### Get the list of pods 

``` kubectl get pods ```

### Show labels

``` kubectl get pod <pod-name> --show-labels ```

### Label the pod

``` kubectl label pods <pod-name> environment=deployment ```

### Run a test pod using the nginx image

``` kubectl run my-test-pod --image=nginx --restart=Never ```

### Show logs 

``` kubectl logs <pod-name> ```

## Task 3: Deploying a StatefulSet

### Create and open a file named statefulset.yaml in edit mode.

``` touch statefulset.yaml ```

### Open statefulset.yaml, and add the following code, and save the file:

```    
   apiVersion: apps/v1
   kind: StatefulSet
   metadata:
     name: my-statefulset
   spec:
     serviceName: "nginx"
     replicas: 3
     selector:
       matchLabels:
         app: nginx
     template:
       metadata:
         labels:
           app: nginx
       spec:
         containers:
         - name: nginx
           image: nginx
           ports:
           - containerPort: 80
             name: web
     volumeClaimTemplates:
     - metadata:
         name: www
       spec:
         accessModes: [ "ReadWriteOnce" ]
         resources:
           requests:
             storage: 1Gi
 ```

### Apply the StatefulSet configuration.

``` kubectl apply -f statefulset.yaml ```

### Verify that the StatefulSet is created.

``` kubectl get statefulsets ```

## Task 4: Implementing a DaemonSet

### Create a file named daemonset.yaml and open it in edit mode:

``` touch daemonset.yaml ```

### Create and open a file named daemonset.yaml in edit mode.

``` 
  apiVersion: apps/v1
  kind: DaemonSet
  metadata:
    name: my-daemonset
  spec:
    selector:
      matchLabels:
        name: my-daemonset
    template:
      metadata:
        labels:
          name: my-daemonset
      spec:
        containers:
        - name: my-daemonset
          image: nginx
 ```

 ### Apply the DaemonSet

``` kubectl apply -f daemonset.yaml ```

### Verify that the DaemonSet has been created

``` kubectl get daemonsets ```


