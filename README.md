# hello-laravel

A simple project that runs a php-laravel web application in kubernetes.

## Requirements

1. local kubernets cluster (minikube, kind, k3s, etc.)
2. kubectl cli (installation guide [here](https://kubernetes.io/docs/tasks/tools/#kubectl))
3. (optional) helm

## Running the app
1. Clone the repository
    ```
    git clone git@github.com:ezieragabriel/hello-laravel.git
    ```
2. In the project directory, apply the kubernetes manifests by running:
    ```
    cd hello-laravel
    kubectl apply -f ./k8s
    ```
3. To access the web server, we will forward the nginx svc to local port 8000 by running:
    ```
    kubectl port-forward svc/nginx 8000:80
    ```
    You may now visit http://localhost:8000!
